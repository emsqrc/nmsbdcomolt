//---------------------------------------------------------------------------

#include <vcl.h>

#pragma hdrstop

#define APPVERS "v1.20-"+IntToStr(random(1000000))

#define ID_COLUM_MAC 7
#define ID_COLUM_MODEL 5
#define ID_OLT_TEMPERATURA 5
#define ID_OLT_CPU 6
#define ID_ONU_DISTANCE 2
#define ID_ONU_TX 0
#define ID_ONU_RX 1
#define COUNTOLT 20

#define MULTISELECT_BEGIN if(Form1->ListView2->SelCount>1){ \
        AnsiString tempEPON;   \
        Form1->ProgressBar2->Visible=true;  \
        Form1->ProgressBar2->Max=Form1->ListView2->SelCount-1; \
        int n=0;                            \
      for(int i=0; i<Form1->ListView2->Items->Count;i++){  \
       if(Form1->ListView2->Items->Item[i]->Selected){    \
         Form1->ProgressBar2->Position=n;           \
         n++;  \
         tempEPON=Form1->ListView2->Items->Item[i]->Caption;

#define MULTISELECT_MIDLE } \
      }                   \
      Form1->ProgressBar2->Visible=false;  \
   }else{

#define MULTISELECT_MIDLE_1 } \
      }


#define MULTISELECT_MIDLE_2 }                 \
      Form1->ProgressBar2->Visible=false;  \
   }else{

#define MULTISELECT_END }


#include "Unit1.h"
#include "Unit3.h"
#include "Unit4.h"
#include "Unit7.h"
#include "Unit10.h"
#include "Unit17.h"
#include "mstrnew.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "IdSNMP"
#pragma resource "*.dfm"
TForm1 *Form1;

AnsiString __getifindex(AnsiString name);

#include "mondb.h"

int SIZETOP;
bool OLTREAD=false;
bool ONUREAD=false;
bool SELFINDMAC=false;
bool SELFINDNAME=false;
bool CLOSEAPP=false;
bool CMD=false;
bool READEPONINDB=false;
int myCountPort=0;
bool STARTFROMPARAM=false;
int EPONCOLOR=0xffffff;

#define TOUT 2000
#define MBYF 100000


AnsiString SelectedIP;
AnsiString SelectedEPON;
AnsiString SelectedPORT;
TListItem *ItemSelected;
bool debag=false;
bool start=false;
int SortIndex=0;
int SortVec=0;
void ShowProgres(int e);
void ShowProgres2(int e);
void ShowProgres3(int e);
void ShowProgres3set(int e);
AnsiString ParamEPON;

#include "askset_modul.h"
#include "olt_modul.h"


class TEPON{
TStringList *s;

public:
   TEPON(){
      s=new TStringList();
   }
   ~TEPON(){
      s->Free();
   }
   int count(){
   return s->Count;
   }
   void write(AnsiString eponlist){
     s->Clear();
     s->Text=eponlist;
   }
   TStringList *getList(){
   return s;
   }
   AnsiString getNameLine(int line){
    Tmstr temp(MBYF);
    temp=s->Strings[line].c_str();
    temp.extract("name[*]");
    temp.del("name[");
    temp.del("]");
    return temp.charstr();
   }
   AnsiString getIfindexLine(int line){
    Tmstr temp(MBYF);
    temp=s->Strings[line].c_str();
    temp.extract("ifindex[*]");
    temp.del("ifindex[");
    temp.del("]");
    return temp.charstr();
   }
   AnsiString getIfindex(AnsiString name){
        Tmstr temp(MBYF);
       for(int i=0; i<s->Count; i++){
             temp=s->Strings[i].c_str();
             if(temp[("name["+name+"]").c_str()]){
                temp.extractminimal("ifindex[*]");
                temp.del("ifindex[");
                temp.del("]");
                return temp.charstr();
             }
       }
       return "";
   }
   TStringList *read(){
        return s;
   }
};
TEPON EPON;

AnsiString __getifindex(AnsiString name){
        if(name=="All") return "";
 return EPON.getIfindex(name);
}

void ShowInfo();
void ShowBaseInfoForEpon();
void AllEnable(bool e);

long getTime(){
	return DateTimeToTimeStamp(Now()).Time;
}



#include "_asksnmp.h"
#include "_asktelnet.h"


Ttelnet asktelnet;
Tsnmp asksnmp;
Task_set askset;
TOLT OLT;




void showCountColums(){
 Form1->Label2->Caption=" ONU - "+IntToStr(Form1->ListView2->Items->Count)+" шт.";
}


void ShowOLT_old(){
 Form1->ListView1->Items->Clear();
 Application->ProcessMessages();
 AllEnable(false);
 ShowProgres2(0);
 for(int i=0; i<OLT.getList()->Count; i++){
        try{
        ShowProgres2((1000*i)/OLT.getList()->Count);
     AnsiString s=OLT.getList()->Strings[i];
     TListItem *l=Form1->ListView1->Items->Add();
     l->Caption=s;
     AnsiString ss = asksnmp.olt_name(s,askset.snmp_comuniti);
     if(ss=="") continue;
     l->SubItems->Add(ss);
     l->SubItems->Add(asksnmp.vendor(s,askset.snmp_comuniti));
     l->SubItems->Add(asksnmp.model(s,askset.snmp_comuniti));
     l->SubItems->Add(asksnmp.firmware(s,askset.snmp_comuniti));
     l->SubItems->Add(asksnmp.hardware(s,askset.snmp_comuniti));
     l->SubItems->Add(asksnmp.temperature(s,askset.snmp_comuniti));
     l->SubItems->Add(asksnmp.cpu_usage(s,askset.snmp_comuniti));
     int o,f,r;
     r=asksnmp.registered_onu(s,askset.snmp_comuniti);
     o=asksnmp.online_onu(s,askset.snmp_comuniti);
     f=r-o;
     l->SubItems->Add(IntToStr(o)+" / "+IntToStr(f));
     l->SubItems->Add(IntToStr(r));
     Application->ProcessMessages();
     }catch(...){
     }
 }
 ShowProgres2(0);
 AllEnable(true);
 Form1->Label1->Caption =" OLT - "+IntToStr(OLT.getList()->Count)+" шт.";
}

void ShowOLT(bool e){
 OLTREAD=true;
 Form1->ListView1->Items->Clear();
 AllEnable(false);
 ShowProgres3set(10*(OLT.getList()->Count));
 int jj=1;
 if(!STARTFROMPARAM){
 for(int i=0; i<OLT.getList()->Count; i++){
    TListItem *l=Form1->ListView1->Items->Add();
    l->Caption = OLT.getList()->Strings[i];
    for(int j=0; j<10; j++){
        l->SubItems->Add("");
    }
    if((askset.db=="1")&&(e==false)) OLT_from_db(l);
    ShowProgres3(jj);
    jj++;
 }
 SortIndex=0;
 SortVec=1;
 Form1->ListView1->AlphaSort();
 }else{
    TListItem *l=Form1->ListView1->Items->Add();
    l->Caption = SelectedIP;
    for(int j=0; j<9; j++){
        l->SubItems->Add("");
    }
 }
 if(!e) goto mi;
 try{
 for(int i=0; i<Form1->ListView1->Items->Count; i++){
    TListItem *l=Form1->ListView1->Items->Item[i];
    AnsiString ip=l->Caption;
    l->SubItems->Strings[0]=asksnmp.olt_name(ip,askset.snmp_comuniti);
    ShowProgres3(jj);
    jj++;
    Application->ProcessMessages();
 }
 }catch(...){
 }
 try{
 for(int i=0; i<Form1->ListView1->Items->Count; i++){
    TListItem *l=Form1->ListView1->Items->Item[i];
    AnsiString ip=l->Caption;
    l->SubItems->Strings[1]=asksnmp.vendor(ip,askset.snmp_comuniti);
    ShowProgres3(jj);
    jj++;
    Application->ProcessMessages();
 }
 }catch(...){
 }
 try{
 for(int i=0; i<Form1->ListView1->Items->Count; i++){
    TListItem *l=Form1->ListView1->Items->Item[i];
    AnsiString ip=l->Caption;
    l->SubItems->Strings[2]=asksnmp.model(ip,askset.snmp_comuniti);
    ShowProgres3(jj);
    jj++;
    Application->ProcessMessages();
 }
 }catch(...){
 }
 try{
 for(int i=0; i<Form1->ListView1->Items->Count; i++){
    TListItem *l=Form1->ListView1->Items->Item[i];
    AnsiString ip=l->Caption;
    l->SubItems->Strings[3]=asksnmp.firmware(ip,askset.snmp_comuniti);
    ShowProgres3(jj);
    jj++;
    Application->ProcessMessages();
 }
 }catch(...){
 }
 try{
 for(int i=0; i<Form1->ListView1->Items->Count; i++){
    TListItem *l=Form1->ListView1->Items->Item[i];
    AnsiString ip=l->Caption;
    l->SubItems->Strings[4]=asksnmp.hardware(ip,askset.snmp_comuniti);
    ShowProgres3(jj);
    jj++;
    Application->ProcessMessages();
 }
 }catch(...){
 }
 try{
 for(int i=0; i<Form1->ListView1->Items->Count; i++){
    TListItem *l=Form1->ListView1->Items->Item[i];
    AnsiString ip=l->Caption;
    l->SubItems->Strings[5]=asksnmp.temperature(ip,askset.snmp_comuniti);
    ShowProgres3(jj);
    jj++;
    Application->ProcessMessages();
 }
 }catch(...){
 }
 try{
 for(int i=0; i<Form1->ListView1->Items->Count; i++){
    TListItem *l=Form1->ListView1->Items->Item[i];
    AnsiString ip=l->Caption;
    l->SubItems->Strings[6]=asksnmp.cpu_usage(ip,askset.snmp_comuniti);
    ShowProgres3(jj);
    jj++;
    Application->ProcessMessages();
 }
 }catch(...){
 }
 try{
 asksnmp.SetCalback(0);
 for(int i=0; i<Form1->ListView1->Items->Count; i++){
    TListItem *l=Form1->ListView1->Items->Item[i];
    AnsiString ip=l->Caption;
    int o,f,r;
     o=asksnmp.online_onu(ip,askset.snmp_comuniti);
     l->SubItems->Strings[7]=IntToStr(o);
     ShowProgres3(jj);
    jj++;
    Application->ProcessMessages();
 }


 for(int i=0; i<Form1->ListView1->Items->Count; i++){
    TListItem *l=Form1->ListView1->Items->Item[i];
    AnsiString ip=l->Caption;
    int o,f,r;
     r=asksnmp.registered_onu(ip,askset.snmp_comuniti);
     o=StrToInt(l->SubItems->Strings[7]);
     f=r-o;
     l->SubItems->Strings[7]=IntToStr(o)+" / "+IntToStr(f);
     l->SubItems->Strings[8]=IntToStr(r);
     ShowProgres3(jj);
    jj++;
    Application->ProcessMessages();

 }


 asksnmp.SetCalback(ShowProgres);
 }catch(...){
 asksnmp.SetCalback(ShowProgres);
 }
 mi:
 OLTREAD=false;
 ShowProgres3(0);
 AllEnable(true);
 Form1->ListView1->Repaint();
 Form1->Label1->Caption =" OLT - "+IntToStr(OLT.getList()->Count)+" шт.";
}




void ShowEPON(AnsiString port){
   Form1->ListView2->Items->Clear();
   Tmstr temp(MBYF);
   TStringList *sl=new TStringList();
   sl->Text=EPON.getList()->Text;
   if(port==""){
   Form1->ListView3->Items->Clear();
   if(!((READEPONINDB)&&(PORT_from_db(SelectedIP,Form1->ListView3)))){
   int rall,oall,fall;
   rall=0;
   oall=0;
   fall=0;
   for(int i=0; i<sl->Count; i++){
    temp=sl->Strings[i].c_str();
    if(!temp[":"]){
     temp.extractminimal("name[*]");
     temp.del("name[");
     temp.del("]");
     TListItem *l=Form1->ListView3->Items->Add();
     l->Caption=temp.charstr();
     AnsiString ifindex=temp.charstr();
     ifindex=EPON.getIfindex(ifindex);
     try{
     int r=StrToInt(asksnmp.epon_registered(SelectedIP,askset.snmp_comuniti,ifindex));
     rall+=r;
     int o=StrToInt(asksnmp.epon_online(SelectedIP,askset.snmp_comuniti,ifindex));
     oall+=o;
     int f=r-o;
     fall+=f;
     l->SubItems->Add(IntToStr(o)+" / "+IntToStr(f));
     l->SubItems->Add(IntToStr(r));
     l->SubItems->Add(asksnmp.epon_temper(SelectedIP,askset.snmp_comuniti,ifindex));
     }catch(...){
     }

    }
   }
   TListItem *l=Form1->ListView3->Items->Add();
     l->Caption="All";
     l->SubItems->Add(IntToStr(oall)+" / "+IntToStr(fall));
     l->SubItems->Add(IntToStr(rall));
     l->SubItems->Add("");
     Form1->ListView3->Columns->Items[0]->Width-=25;
   }
   if(askset.db=="1") PORT_to_db(SelectedIP,Form1->ListView3);
   }
   if(port=="All") port="";

   sl->Clear();
   for(int i=0; i<EPON.getList()->Count; i++){
        temp=EPON.getList()->Strings[i].c_str();
        if(temp[(port+":").c_str()]){
         sl->Add(temp.charstr());
        }
   }
 for(int i=0; i<sl->Count; i++){
     AnsiString s=sl->Strings[i];
     temp=s.c_str();
     if(temp[":"]){
        TListItem *l=Form1->ListView2->Items->Add();
        temp=s.c_str();
        temp.extractminimal("name[*]");
        temp.del("name[");
        temp.del("]");
        l->ImageIndex=1;
        l->Caption=temp.charstr();
        for(int k=0; k<10; k++) l->SubItems->Add("");
        if(askset.db=="1") ONU_from_db(SelectedIP, l);
     }
 }
 Form1->Label2->Caption =" ONU - "+IntToStr(sl->Count)+" шт.";
 Tmstr ste(100);
 ste=port.c_str();
 if((!ste["EPON"])&&(sl->Count<myCountPort)) {
        if(READEPONINDB) ShowMessage("Кількість ONU в базі відрізняється від кількості на OLT...\n"+IntToStr(myCountPort)+" - "+IntToStr(sl->Count)+" = "+IntToStr(myCountPort-sl->Count)); else ShowMessage("Прочитано не всі ONU...\n"+IntToStr(sl->Count)+" / "+IntToStr(myCountPort));
 }else if(askset.db=="1") ifindex_to_db(SelectedIP,EPON.read());
 READEPONINDB=false;
 sl->Free();
 Form1->ListView2->Repaint();
 Form1->ListView3->Repaint();
}

void ShowEPONlist(AnsiString list){
   Form1->ListView2->Items->Clear();
   Tmstr temp(MBYF);
   TStringList *sl=new TStringList();
   sl->Text=list;
 for(int i=0; i<sl->Count; i++){
     AnsiString s=sl->Strings[i];
     temp=s.c_str();
     TListItem *l=Form1->ListView2->Items->Add();
     temp.extract("* ");
     temp.del(" ");
     l->Caption=temp.charstr();
     l->ImageIndex=2;
     for(int i=0; i<7; i++) l->SubItems->Add("");
     temp=s.c_str();
     temp.extract("????.????.????");
     l->SubItems->Add(temp.charstr());
     l->SubItems->Add("");
     l->SubItems->Add("");
 }
 Form1->Label2->Caption =" ONU - "+IntToStr(sl->Count)+" шт.";
 sl->Free();
}

void ShowInfo(){

	Form1->StatusBar1->Panels->Items[2]->Text=asktelnet.oltname;
	/*Form1->StatusBar1->Panels->Items[1]->Text=asktelnet.oltip;
        Form1->StatusBar1->Panels->Items[2]->Text=asktelnet.oltmodel; */
}

void ShowSelectPort(){
Tmstr temp(MBYF);
        temp=Form1->ListView3->Selected->Caption.c_str();
        if(temp["EPON"]){
                SelectedPORT=temp.charstr();
        }else{
                SelectedPORT="All";
        }
        ShowEPON(SelectedPORT);
}

void AllEnable(bool e){
  /*Form1->PageControl1->Enabled=e;
  Form1->ListView1->Enabled=e;
  Form1->ListView2->Enabled=e;
  Form1->ListView3->Enabled=e;
  Form1->ComboBox2->Enabled=e;*/
}

void ShowProgres(int e){
	static float failpos=0;
	if(e==1){
		failpos+=0.1;
		if(failpos>1000) failpos=0;
                AllEnable(false);
	}
	if(e==0){
		failpos=0;
                AllEnable(true);
	}
        if(e==2){
             failpos+=2;
             if(failpos>1000) failpos=0;
             AllEnable(false);
        }
	Form1->ProgressBar1->Position=failpos;
}
void ShowProgres2(int e){
	Form1->ProgressBar1->Position=e;
        if(e>0) AllEnable(false);
        else AllEnable(true);
}
void ShowProgres3set(int e){
 Form1->ProgressBar1->Max=e;
}

void ShowProgres3(int e){
        Form1->ProgressBar1->Position=e;
        //Application->ProcessMessages();
        if(e>0) AllEnable(false);
        else {
                AllEnable(true);
                Form1->ProgressBar1->Max=1000;
        }
}

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::IdTelnet1DataAvailable(TIdTelnet *Sender,
      const TIdBytes Buffer)
{
        AnsiString temp="";
        String b=BytesToString(Buffer);
	for(int i=1; i<b.Length()+1; i++){
		if((b[i]!='\b')&&(b[i]!='\r')){
           temp=temp+b[i];
		}
	}
	asktelnet.Add(temp);
        if(debag){
	        Form7->Memo1->Lines->Text=Form7->Memo1->Lines->Text+temp;
	        Form7->Memo1->Perform(EM_LINESCROLL,0,Form7->Memo1->Lines->Count-1);
        }
}
//---------------------------------------------------------------------------

void parceParam(TObject *Sender){
try{
  AnsiString s =ParamStr(1);
  Tmstr str(100);
  str=s.c_str();
  if(str["@"]){
     str.mdel("@*");
     AnsiString l=str.charstr();
     str=s.c_str();
     str.mdel("*@");
     AnsiString h=str.charstr();
     AnsiString p=ParamStr(2);
     AnsiString i=ParamStr(3);
     STARTFROMPARAM=true;
     askset.telnet_user=l;
     askset.telnet_pass=p;
     SelectedIP=h;
     ParamEPON=i;
     str=i.c_str();
  }
}catch(...){ShowMessage("Помилка переданих параметрів");CLOSEAPP=true;}
}

#include "license.h"

void getTimeStop(){
        long ts=737990;
        long t=DateTimeToTimeStamp(Now()).Date;
        if(t>ts){
                CLOSEAPP=true;
                ShowMessage("Версія програми застаріла\nОновіть");
        }
}

void __fastcall TForm1::FormCreate(TObject *Sender)
{
        init();
        ifcreate();
        askset.load();
        OLT.load();
        if(ParamStr(1)=="130187SR150") delmylicense();
        getmylicense();
        getTimeStop();
        SIZETOP=Form1->ClientHeight-Form1->ListView2->Height;
        asktelnet.SetCalback(ShowProgres);
        asksnmp.SetCalback(ShowProgres);
        Application->Title="Моніторинг";
        Form1->Caption="BDCOM GEPON OLT моніторинг";
        Form1->PageControl1->ActivePage=Form1->TabSheet1;
        Form1->TabSheet2->TabVisible=false;
        Form1->TabSheet3->TabVisible=false;
        Form1->TabSheet4->TabVisible=false;
        parceParam(Sender);
        /*ListView1->DoubleBuffered=true;
        ListView2->DoubleBuffered=true;
        ListView3->DoubleBuffered=true;*/
}
//---------------------------------------------------------------------------





extern AnsiString getIP();



void __fastcall TForm1::OLT2Click(TObject *Sender)
{
    AnsiString s=getIP();
    Tmstr str(100);
    str=s.c_str();
    if((OLT.getList()->Count<COUNTOLT)){
        OLT.Add(s);
        TListItem *l =ListView1->Items->Add();
        l->Caption=s;
        for(int i=0; i<9; i++)l->SubItems->Add("");
        }
    else ShowMessage("Кількість OLT перевищує ліміт");
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormActivate(TObject *Sender)
{
if(start==false){
        if(!CLOSEAPP){
        start=true;
        if(askset.telnet_user=="") Telnet1Click(Sender);
        if(askset.snmp_comuniti=="") SNMP1Click(Sender);
        if(askset.db=="0") N25->Checked=false; else {N25->Checked=true; ifcreate();}
        try{
        TIMEOUT=StrToInt(askset.timeout);
        }catch(...){
                askset.timeout="2";
                TIMEOUT=2;
        }
        ShowOLT(false);
        if((STARTFROMPARAM)&&(ParamEPON!="")){
                try{
                myCountPort=StrToInt(ListView1->Items->Item[0]->SubItems->Strings[8]);
                }catch(...){};
                 N4Click(Sender);
                 SelectedEPON=ParamEPON;
                 Tmstr str(100);
                 str=SelectedEPON.c_str();
                 if(str[":"]){
                   Edit3->Text=SelectedEPON;
                   Button8Click(Sender);
                   Edit3->Text="";
                   //ListView2Click(Sender);
                 }
        }
        }else Application->Terminate();
}

}
//---------------------------------------------------------------------------

extern bool getTelnet(AnsiString user, AnsiString pass);

void __fastcall TForm1::Telnet1Click(TObject *Sender)
{
    if(getTelnet(askset.telnet_user,askset.telnet_pass)){
     askset.telnet_user=Form3->Edit1->Text;
     askset.telnet_pass=Form3->Edit2->Text;
    }
}
//---------------------------------------------------------------------------


extern bool getSNMP(AnsiString snmp);

void __fastcall TForm1::SNMP1Click(TObject *Sender)
{
   if(getSNMP(askset.snmp_comuniti)){
     askset.snmp_comuniti=Form4->Edit1->Text;
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::OLT1Click(TObject *Sender)
{
        OLT2Click(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N1Click(TObject *Sender)
{
 ShowOLT(true);
 if(askset.db=="1") for(int i=0; i<ListView1->Items->Count; i++){     //Запис в Базу Даних
        OLT_to_db(ListView1->Items->Item[i]);
 }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView1Change(TObject *Sender, TListItem *Item,
      TItemChange Change)
{
        if(Item->Caption!=SelectedIP){
         Form1->TabSheet2->TabVisible=false;
        }
        SelectedIP=Item->Caption;
        SelectedEPON="";
        try{
        myCountPort=StrToInt(Item->SubItems->Strings[8]);
        }catch(...){};
        try{
        if(Item->SubItems->Count>0) Form1->StatusBar1->Panels->Items[0]->Text=Item->SubItems->Strings[0];
        }catch(...){
        Form1->StatusBar1->Panels->Items[0]->Text=SelectedIP;
        }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::N3Click(TObject *Sender)
{
  OLT.Delete(SelectedIP);
  ListView1->DeleteSelected();
}
//---------------------------------------------------------------------------

void readEpon(){
  myCountPort=StrToInt(Form1->ListView1->Selected->SubItems->Strings[8]);
  AnsiString tes="";
  if(askset.db=="1") tes=ifindex_from_db(SelectedIP);
  if(tes!="") {
        EPON.write(tes);
        READEPONINDB=true;
  }else EPON.write(asksnmp.epon_name(SelectedIP,askset.snmp_comuniti));
  ShowEPON("");
  Form1->TabSheet2->TabVisible=true;
  Form1->PageControl1->ActivePage=Form1->TabSheet2;
}

void __fastcall TForm1::N4Click(TObject *Sender)
{
  myCountPort=StrToInt(ListView1->Selected->SubItems->Strings[8]);
  EPON.write(asksnmp.epon_name(SelectedIP,askset.snmp_comuniti));
  ShowEPON("");
  Form1->TabSheet2->TabVisible=true;
  Form1->PageControl1->ActivePage=Form1->TabSheet2;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView2Change(TObject *Sender, TListItem *Item,
      TItemChange Change)
{
        ListView2->PopupMenu->AutoPopup=true;
        if(Item->Caption!=SelectedEPON){

        }
        SelectedEPON=Item->Caption;
        ItemSelected=Item;
        Form1->StatusBar1->Panels->Items[1]->Text=SelectedEPON;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N5Click(TObject *Sender)
{
        AnsiString ifindex=EPON.getIfindex(SelectedEPON);
        ItemSelected->SubItems->Clear();
        try{
        ItemSelected->SubItems->Add(asksnmp.epon_tx(SelectedIP,askset.snmp_comuniti,ifindex));
        ItemSelected->SubItems->Add(asksnmp.epon_rx(SelectedIP,askset.snmp_comuniti,ifindex));
        ItemSelected->SubItems->Add(asksnmp.epon_distance(SelectedIP,askset.snmp_comuniti,ifindex));
        ItemSelected->SubItems->Add(asksnmp.epon_uptime(SelectedIP,askset.snmp_comuniti,ifindex));
        asktelnet.GetInfo(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON);
        //ItemSelected->SubItems->Add(asksnmp.epon_mac(SelectedIP,askset.snmp_comuniti, ifindex));
        ItemSelected->SubItems->Add(asktelnet.sVENDOR);
        ItemSelected->SubItems->Add(asktelnet.sMODEL);
        ItemSelected->SubItems->Add(asktelnet.sVERSION);

        ItemSelected->SubItems->Add(asktelnet.sMAC);
        }catch(...){
          ItemSelected->SubItems->Clear();
        }

}
//---------------------------------------------------------------------------

void __fastcall TForm1::N6Click(TObject *Sender)
{
        MULTISELECT_BEGIN
        AnsiString temp=asktelnet.LastDereg(SelectedIP,askset.telnet_user,askset.telnet_pass,tempEPON);
        ShowMessage(temp);
        MULTISELECT_MIDLE
        AnsiString temp=asktelnet.LastDereg(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON);
        ShowMessage(temp);
        MULTISELECT_END
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N7Click(TObject *Sender)
{
        N4Click(Sender);        
}
//---------------------------------------------------------------------------
extern AnsiString showSetup(AnsiString a);

void __fastcall TForm1::N9Click(TObject *Sender)
{
  MULTISELECT_BEGIN
     AnsiString temp=asktelnet.ShowRunInterface(SelectedIP,askset.telnet_user,askset.telnet_pass,tempEPON);
        temp=showSetup(temp);
        if(temp!=""){
         asktelnet.SetRunInterface(SelectedIP,askset.telnet_user,askset.telnet_pass,tempEPON,temp);
        }
  MULTISELECT_MIDLE
        AnsiString temp=asktelnet.ShowRunInterface(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON);
        temp=showSetup(temp);
        if(temp!=""){
         asktelnet.SetRunInterface(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON,temp);
        }
  MULTISELECT_END
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView2Click(TObject *Sender)
{
ListView2->PopupMenu->AutoPopup=true;
try{
Tmstr temp(MBYF);
temp=SelectedEPON.c_str();
Form1->StatusBar1->Panels->Items[2]->Text="Виділено "+IntToStr(Form1->ListView2->SelCount)+" шт.";
if(temp[":"]){
        AnsiString ifindex=EPON.getIfindex(SelectedEPON);
        ItemSelected->ImageIndex=1;
        try{
        AnsiString t=asksnmp.epon_tx(SelectedIP,askset.snmp_comuniti,ifindex);
        if(t==""){
                ItemSelected->ImageIndex=2;
                ItemSelected->SubItems->Strings[0]="";
                ItemSelected->SubItems->Strings[1]="";
                ItemSelected->SubItems->Strings[2]="";
                goto mi;
        }
        ItemSelected->SubItems->Strings[0]=t;
        ItemSelected->SubItems->Strings[1]=asksnmp.epon_rx(SelectedIP,askset.snmp_comuniti,ifindex);
        ItemSelected->SubItems->Strings[2]=asksnmp.epon_distance(SelectedIP,askset.snmp_comuniti,ifindex);
        ItemSelected->SubItems->Strings[3]=asksnmp.epon_uptime(SelectedIP,askset.snmp_comuniti,ifindex);
        }catch(...){
          ItemSelected->ImageIndex=2;
        }
        mi:
        try{
        ItemSelected->SubItems->Strings[4]=asksnmp.epon_vendor(SelectedIP,askset.snmp_comuniti,ifindex);
        ItemSelected->SubItems->Strings[5]=asksnmp.epon_model(SelectedIP,askset.snmp_comuniti,ifindex);
        ItemSelected->SubItems->Strings[6]=asksnmp.epon_vlan(SelectedIP,askset.snmp_comuniti,ifindex);
        ItemSelected->SubItems->Strings[7]=asksnmp.epon_mac(SelectedIP,askset.snmp_comuniti,ifindex);
        ItemSelected->SubItems->Strings[8]=asksnmp.epon_software(SelectedIP,askset.snmp_comuniti,ifindex);
        AnsiString p=asksnmp.epon_status(SelectedIP,askset.snmp_comuniti,ifindex);
        if(p=="1") {
           p="connect";
        }else{
           p="down";
           ItemSelected->ImageIndex=2;
        }
        ItemSelected->SubItems->Strings[9]=p;
        }catch(...){
          ItemSelected->ImageIndex=2;
        }
ONU_to_db(SelectedIP,ItemSelected);
}
}catch(...){};

}
//---------------------------------------------------------------------------




void __fastcall TForm1::ListView1DblClick(TObject *Sender)
{
Form17->Show();
Form17->Left=Form1->Left+(Form1->Width-Form17->Width)/2;
Form17->Top=Form1->Top+(Form1->Height-Form17->Height)/2;
Form17->Repaint();
Form1->Repaint();
try{
        SelectedIP=ListView1->Selected->Caption;
        SelectedEPON="";
        try{
        myCountPort=StrToInt(ListView1->Selected->SubItems->Strings[8]);
        }catch(...){};
        try{
        if(ListView1->Selected->SubItems->Count>0) Form1->StatusBar1->Panels->Items[0]->Text=ListView1->Selected->SubItems->Strings[0];
        }catch(...){
        Form1->StatusBar1->Panels->Items[0]->Text=SelectedIP;
        }
        readEpon();
}catch(...){}
Form17->Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N10Click(TObject *Sender)
{
        AnsiString s = asktelnet.getOltVersion(SelectedIP,askset.telnet_user,askset.telnet_pass);
        ShowMessage(s);
}
//---------------------------------------------------------------------------
#define IS Form1->ListView2->Items->Item[i]

void WriteCombobox(){
 Form1->ComboBox2->Clear();
        Tmstr temp(MBYF);
        AnsiString s;
        for(int i=0; i<Form1->ListView2->Items->Count; i++){
         try{
            s=Form1->ListView2->Items->Item[i]->SubItems->Strings[ID_COLUM_MODEL];
            if(temp[(s+"\n").c_str()]==false){
             temp+=s.c_str();
             temp+="\n";
             Form1->ComboBox2->Items->Add(s.c_str());
            }
         }catch(...){

         }
        }
        //ShowMessage(temp.charstr());


}


void ShowBaseInfoForEpon(){
AnsiString ifindex;
ShowProgres3set(5*(Form1->ListView2->Items->Count));
int jj=1;
for(int i=0; i<Form1->ListView2->Items->Count; i++){
   if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
   }
   ifindex=IS->Caption;
   ifindex=EPON.getIfindex(ifindex);
   IS->SubItems->Strings[4]=asksnmp.epon_vendor(SelectedIP,askset.snmp_comuniti,ifindex);
   if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"vendor",IS->SubItems->Strings[4]);
   ShowProgres3(jj);
   jj++;
   Application->ProcessMessages();
}

for(int i=0; i<Form1->ListView2->Items->Count; i++){
   if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
   }
   ifindex=IS->Caption;
   ifindex=EPON.getIfindex(ifindex);
   IS->SubItems->Strings[5]=asksnmp.epon_model(SelectedIP,askset.snmp_comuniti,ifindex);
   if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"model",IS->SubItems->Strings[5]);
   ShowProgres3(jj);
   jj++;
   Application->ProcessMessages();
}

for(int i=0; i<Form1->ListView2->Items->Count; i++){
   if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
   }
   ifindex=IS->Caption;
   ifindex=EPON.getIfindex(ifindex);
   IS->SubItems->Strings[6]=asksnmp.epon_vlan(SelectedIP,askset.snmp_comuniti,ifindex);
   if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"vlan",IS->SubItems->Strings[6]);
   ShowProgres3(jj);
   jj++;
   Application->ProcessMessages();
}

for(int i=0; i<Form1->ListView2->Items->Count; i++){
   if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
   }
   ifindex=IS->Caption;
   ifindex=EPON.getIfindex(ifindex);
   IS->SubItems->Strings[7]=asksnmp.epon_mac(SelectedIP,askset.snmp_comuniti,ifindex);
   if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"mac",IS->SubItems->Strings[7]);
   ShowProgres3(jj);
   jj++;
   Application->ProcessMessages();
}

for(int i=0; i<Form1->ListView2->Items->Count; i++){
   if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
   }
   ifindex=IS->Caption;
   ifindex=EPON.getIfindex(ifindex);
   IS->SubItems->Strings[8]=asksnmp.epon_software(SelectedIP,askset.snmp_comuniti,ifindex);
   if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"version",IS->SubItems->Strings[8]);
   ShowProgres3(jj);
   jj++;
   Application->ProcessMessages();
}

for(int i=0; i<Form1->ListView2->Items->Count; i++){
   if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
   }
   ifindex=IS->Caption;
   ifindex=EPON.getIfindex(ifindex);
   AnsiString p=asksnmp.epon_status(SelectedIP,askset.snmp_comuniti,ifindex);
        if(p=="1") {
           p="connect";
        }else{
           p="down";
           IS->ImageIndex=2;
        }
   IS->SubItems->Strings[9]=p;
   if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"status",IS->SubItems->Strings[9]);
   ShowProgres3(jj);
   jj++;
   Application->ProcessMessages();
}

WriteCombobox();
ShowProgres(0);
}

void ShowBaseInfoForEpon_old(){
AnsiString ifindex;
for(int i=0; i<Form1->ListView2->Items->Count; i++){
        ShowProgres2((1000*i)/Form1->ListView2->Items->Count);
        if((Form1->ListView2->SelCount>1)&&(!Form1->ListView2->Items->Item[i]->Selected)) continue;
        Application->ProcessMessages();
        ifindex=Form1->ListView2->Items->Item[i]->Caption;
        ifindex=EPON.getIfindex(ifindex);
        IS->ImageIndex=1;
        try{
        }catch(...){
          IS->ImageIndex=2;
        }
        try{
        while(IS->SubItems->Count<4) IS->SubItems->Add("");
        IS->SubItems->Add(asksnmp.epon_vendor(SelectedIP,askset.snmp_comuniti,ifindex));
        IS->SubItems->Add(asksnmp.epon_model(SelectedIP,askset.snmp_comuniti,ifindex));
        IS->SubItems->Add(asksnmp.epon_vlan(SelectedIP,askset.snmp_comuniti,ifindex));
        IS->SubItems->Add(asksnmp.epon_mac(SelectedIP,askset.snmp_comuniti,ifindex));
        IS->SubItems->Add(asksnmp.epon_software(SelectedIP,askset.snmp_comuniti,ifindex));
        }catch(...){
          IS->ImageIndex=2;
        }
}
WriteCombobox();
ShowProgres(0);
Form1->ListView2->Repaint();
}

void __fastcall TForm1::Button1Click(TObject *Sender)
{
 ShowBaseInfoForEpon();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::N11Click(TObject *Sender)
{
        asktelnet.writeAll(SelectedIP,askset.telnet_user,askset.telnet_pass);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N12Click(TObject *Sender)
{
        asktelnet.reboot(SelectedIP,askset.telnet_user,askset.telnet_pass);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::N8Click(TObject *Sender)
{
        MULTISELECT_BEGIN
        asktelnet.onu_reboot(SelectedIP,askset.telnet_user,askset.telnet_pass,tempEPON);
        MULTISELECT_MIDLE
       asktelnet.onu_reboot(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON);
       MULTISELECT_END
}
//---------------------------------------------------------------------------

void __fastcall TForm1::MAC1Click(TObject *Sender)
{
        MULTISELECT_BEGIN
        AnsiString s=asktelnet.onu_mactable(SelectedIP,askset.telnet_user,askset.telnet_pass,tempEPON);
        ShowMessage(s);
        MULTISELECT_MIDLE
        AnsiString s=asktelnet.onu_mactable(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON);
        ShowMessage(s);
        MULTISELECT_END
}
//---------------------------------------------------------------------------

void ListView2_delete_selecteditem(){
        for(int i=Form1->ListView2->Items->Count-1; i>=0; i--){
                if(Form1->ListView2->Items->Item[i]->Selected){
                        Form1->ListView2->Items->Delete(i);
                }
        }

}

void __fastcall TForm1::N13Click(TObject *Sender)
{
        MULTISELECT_BEGIN
         asktelnet.onu_deregister(SelectedIP,askset.telnet_user,askset.telnet_pass,tempEPON);
         deleteONU(SelectedIP,tempEPON);
        MULTISELECT_MIDLE
        asktelnet.onu_deregister(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON);
        deleteONU(SelectedIP,SelectedEPON);
        MULTISELECT_END
        ListView2_delete_selecteditem();
}
//---------------------------------------------------------------------------





void __fastcall TForm1::ListView2DblClick(TObject *Sender)
{

        /*Form1->TabSheet3->TabVisible=true;
        N14Click(Sender);
        Form1->PageControl1->ActivePage=Form1->TabSheet3;*/
        N20Click(Sender);


}
//---------------------------------------------------------------------------


void __fastcall TForm1::N15Click(TObject *Sender)
{
          MULTISELECT_BEGIN
          AnsiString mac=asksnmp.epon_mac(SelectedIP,askset.snmp_comuniti,EPON.getIfindex(tempEPON));
        asktelnet.onu_look(SelectedIP,askset.telnet_user,askset.telnet_pass,tempEPON, mac);
        MULTISELECT_MIDLE
     AnsiString mac=asksnmp.epon_mac(SelectedIP,askset.snmp_comuniti,EPON.getIfindex(SelectedEPON));
     asktelnet.onu_look(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON, mac);
     MULTISELECT_END


}
//---------------------------------------------------------------------------

void __fastcall TForm1::N16Click(TObject *Sender)
{
      MULTISELECT_BEGIN
        AnsiString mac=Form1->ListView2->Items->Item[i]->SubItems->Strings[7];
      asktelnet.onu_unlook(SelectedIP,askset.telnet_user,askset.telnet_pass,tempEPON,mac);
     MULTISELECT_MIDLE
     AnsiString mac=Form1->ListView2->Selected->SubItems->Strings[7];
      asktelnet.onu_unlook(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON,mac);
     MULTISELECT_END

}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button4Click(TObject *Sender)
{
        AnsiString s=asktelnet.blacklist(SelectedIP,askset.telnet_user,askset.telnet_pass);
        if(s!=""){
             ShowEPONlist(s);
             ShowMessage(s);
        }else{
                ShowMessage("Заблокованих немає");
                //ShowSelectPort();
        }
}
//---------------------------------------------------------------------------

extern AnsiString showDesk(AnsiString a);

void __fastcall TForm1::N17Click(TObject *Sender)
{
MULTISELECT_BEGIN
    AnsiString s=asktelnet.onu_description(SelectedIP,askset.telnet_user,askset.telnet_pass,tempEPON);
        s=showDesk(s);
        if(s!=""){
         asktelnet.SetDescription(SelectedIP,askset.telnet_user,askset.telnet_pass,tempEPON,s);
        }
MULTISELECT_MIDLE
        AnsiString s=asktelnet.onu_description(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON);
        s=showDesk(s);
        if(s!=""){
         asktelnet.SetDescription(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON,s);
        }
MULTISELECT_END
}
//---------------------------------------------------------------------------







void __fastcall TForm1::ComboBox2Change(TObject *Sender)
{
        for(int i=Form1->ListView2->Items->Count-1; i>=0;i--){
        try{
            if(Form1->ComboBox2->Text!=Form1->ListView2->Items->Item[i]->SubItems->Strings[ID_COLUM_MODEL]){
               Form1->ListView2->Items->Delete(i);
            }
        }catch(...){
           Form1->ListView2->Items->Delete(i);
        }
        }
        showCountColums();
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Button5Click(TObject *Sender)
{
        SELFINDMAC=false;
        if(Form1->Edit1->Text!=""){
        AnsiString s;
        Tmstr temp(MBYF);
        Tmstr temp2(MBYF);
            for(int i=Form1->ListView2->Items->Count-1; i>=0;i--){
                try{
                s=Form1->Edit1->Text;
                temp=Form1->ListView2->Items->Item[i]->SubItems->Strings[ID_COLUM_MAC].c_str();
                //temp2=temp;
                //temp2.extract(s.c_str());
                if(!(temp[s.c_str()])){
                        Form1->ListView2->Items->Delete(i);
                }
                }catch(...){
                        Form1->ListView2->Items->Delete(i);
                }
            }
        }
        showCountColums();
        Form1->ListView2->Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N18Click(TObject *Sender)
{
        debag=true;
        Form7->Show();
}
//---------------------------------------------------------------------------

extern AnsiString getTFTPip(AnsiString a);

void __fastcall TForm1::TFTP1Click(TObject *Sender)
{
        askset.tftp_ip=getTFTPip(askset.tftp_ip);
}
//---------------------------------------------------------------------------

extern AnsiString getFileName(AnsiString path);

void __fastcall TForm1::N19Click(TObject *Sender)
{
  if(Form1->ListView2->SelCount>1){
     Button6Click(Sender);

  }else{
        AnsiString file=asksnmp.epon_model(SelectedIP,askset.snmp_comuniti,EPON.getIfindex(SelectedEPON));
        file+=".tar";
        if(askset.tftp_ip==""){
            TFTP1Click(Sender);
        }
        file=getFileName(file);
        if(file!=""){
         asktelnet.UpdateONU(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON,askset.tftp_ip,file);
         AnsiString stemp="Видалити файл ("+file+") прошивки з OLT?";
         if(MessageBox(Form1->Handle,stemp.c_str(),"Прошивку завершено",3)==6){
                   asktelnet.DeleteFile(SelectedIP,askset.telnet_user,askset.telnet_pass,file);
                }
        }
  }
}
//---------------------------------------------------------------------------




void __fastcall TForm1::N20Click(TObject *Sender)
{
        Form10->Caption=SelectedIP+"  "+SelectedEPON;
        Form10->Memo1->Clear();
        Form10->Memo1->Lines->Add(SelectedIP+"  "+SelectedEPON);
        for(int i=0;i<Form1->ListView2->Selected->SubItems->Count;i++){
                try{
                Form10->Memo1->Lines->Add(Form1->ListView2->Columns->Items[i+1]->Caption+" :   "+Form1->ListView2->Selected->SubItems->Strings[i]);
                }catch(...){
                }

        }
        Form10->ShowModal();
}
//---------------------------------------------------------------------------
void UpgradeOnePort(){
AnsiString file=asksnmp.epon_model(SelectedIP,askset.snmp_comuniti,EPON.getIfindex(SelectedEPON));
        file+=".tar";
        if(askset.tftp_ip==""){
            askset.tftp_ip=getTFTPip(askset.tftp_ip);
        }
        file=getFileName(file);
        Tmstr temp(MBYF);
        Tmstr temp2(MBYF);
        Tmstr temp3(MBYF);
        AnsiString onus;
        if(file!=""){
                for(int i=0; i<Form1->ListView2->Items->Count; i++){
                        temp3=Form1->ListView2->Items->Item[i]->Caption.c_str();
                        temp3.mdel(":*");
                        temp3+="\n";
                     if(temp[temp3]==false){
                        temp+=temp3;
                     }
                }
                TStringList *ls=new TStringList();
                ls->Text=temp.charstr();
                //ShowMessage(temp.charstr());
                for(int i=0; i<ls->Count; i++){
                   onus="";
                   temp3=ls->Strings[i].c_str();
                   temp3+=":";
                   for(int j=0; j<Form1->ListView2->Items->Count; j++){
                       temp2=Form1->ListView2->Items->Item[j]->Caption.c_str();
                       if(temp2[temp3]){
                           temp2.mdel("*:");
                           if(onus!="") onus+=",";
                           onus+=temp2.charstr();
                       }
                   }
                   temp3.del(":");
                   AnsiString interf=temp3.charstr();
                   asktelnet.UpdateMenyONU(SelectedIP,askset.telnet_user,askset.telnet_pass,interf,onus,askset.tftp_ip,file);
                }

        }
}



void __fastcall TForm1::Button6Click(TObject *Sender)
{
AnsiString file=asksnmp.epon_model(SelectedIP,askset.snmp_comuniti,EPON.getIfindex(SelectedEPON));
        file+=".tar";
        if(askset.tftp_ip==""){
            TFTP1Click(Sender);
        }
        file=getFileName(file);
        Tmstr temp(MBYF);
        Tmstr temp2(MBYF);
        Tmstr temp3(MBYF);
        AnsiString onus;
        if(file!=""){
           if(Form1->ListView2->SelCount>1){
                for(int i=0; i<Form1->ListView2->Items->Count; i++){
                  if(Form1->ListView2->Items->Item[i]->Selected){
                        temp3=Form1->ListView2->Items->Item[i]->Caption.c_str();
                        temp3.mdel(":*");
                        temp3+="\n";
                     if(temp[temp3]==false){
                        temp+=temp3;
                     }
                  }
                }
           }else{
                for(int i=0; i<Form1->ListView2->Items->Count; i++){
                        temp3=Form1->ListView2->Items->Item[i]->Caption.c_str();
                        temp3.mdel(":*");
                        temp3+="\n";
                     if(temp[temp3]==false){
                        temp+=temp3;
                     }
                }
           }
           //ShowMessage(temp.charstr());
                TStringList *ls=new TStringList();
                ls->Text=temp.charstr();
                //ShowMessage(temp.charstr());
                asktelnet.UpdateONUForOLTCopy(SelectedIP,askset.telnet_user,askset.telnet_pass,askset.tftp_ip,file);
                for(int i=0; i<ls->Count; i++){
                   onus="";
                   temp3=ls->Strings[i].c_str();
                   temp3+=":";
                   if(Form1->ListView2->SelCount>1){
                    for(int j=0; j<Form1->ListView2->Items->Count; j++){
                       if(Form1->ListView2->Items->Item[j]->Selected){
                       temp2=Form1->ListView2->Items->Item[j]->Caption.c_str();
                       if(temp2[temp3]){
                           temp2.mdel("*:");
                           if(onus!="") onus+=",";
                           onus+=temp2.charstr();
                       }
                       }
                   }
                   }else{
                   for(int j=0; j<Form1->ListView2->Items->Count; j++){
                       temp2=Form1->ListView2->Items->Item[j]->Caption.c_str();
                       if(temp2[temp3]){
                           temp2.mdel("*:");
                           if(onus!="") onus+=",";
                           onus+=temp2.charstr();
                       }
                   }
                   }
                   temp3.del(":");
                   AnsiString interf=temp3.charstr();
                   asktelnet.UpdateONUForOLTUpdate(interf,onus,file);
                }
                asktelnet.UpdateONUForOLTClose(file);
                AnsiString stemp="Видалити файл ("+file+") прошивки з OLT?";
                if(MessageBox(Form1->Handle,stemp.c_str(),"Прошивку завершено",3)==6){
                   asktelnet.DeleteFile(SelectedIP,askset.telnet_user,askset.telnet_pass,file);
                }
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N21Click(TObject *Sender)
{
        asktelnet.GetInfo(SelectedIP,askset.telnet_user,askset.telnet_pass,SelectedEPON);
        ShowMessage(asktelnet.sVERSION);       
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button7Click(TObject *Sender)
{
AnsiString ifindex;
float srt,srr;
int cn=0;
srt=0;
srr=0;
Tmstr temp(MBYF);
int jj=1;
ShowProgres3set(4*Form1->ListView2->Items->Count);
ONUREAD=true;
Application->ProcessMessages();
for(int i=0; i<Form1->ListView2->Items->Count; i++){
      if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
      }
      IS->ImageIndex=1;
      ifindex=Form1->ListView2->Items->Item[i]->Caption;
      ifindex=EPON.getIfindex(ifindex);
      try{
         AnsiString sig=asksnmp.epon_tx(SelectedIP,askset.snmp_comuniti,ifindex);
        temp=sig.c_str();
        srt+=temp.real();
        cn++;
        if(sig=="") IS->ImageIndex=2;
        IS->SubItems->Strings[0]=sig;
        if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"tx",IS->SubItems->Strings[0]);
      }catch(...){
      IS->ImageIndex=2;
      IS->SubItems->Strings[0]="";
      IS->SubItems->Strings[1]="";
      IS->SubItems->Strings[2]="";
      }
      ShowProgres3(jj);
      jj++;
      Application->ProcessMessages();
}
Application->ProcessMessages();
for(int i=0; i<Form1->ListView2->Items->Count; i++){
      if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
      }
      if(IS->ImageIndex==2){
       jj++;
       continue;
      }
      ifindex=Form1->ListView2->Items->Item[i]->Caption;
      ifindex=EPON.getIfindex(ifindex);
      try{
         AnsiString sig=asksnmp.epon_rx(SelectedIP,askset.snmp_comuniti,ifindex);
        temp=sig.c_str();
        srr+=temp.real();
        if(sig=="") IS->ImageIndex=2;
        IS->SubItems->Strings[1]=sig;
        if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"rx",IS->SubItems->Strings[1]);
      }catch(...){
        IS->ImageIndex=2;
      }
      ShowProgres3(jj);
      jj++;
      Application->ProcessMessages();
}

for(int i=0; i<Form1->ListView2->Items->Count; i++){
      if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
      }
      if(IS->ImageIndex==2){
       jj++;
       continue;
      }
      ifindex=Form1->ListView2->Items->Item[i]->Caption;
      ifindex=EPON.getIfindex(ifindex);
      try{
        IS->SubItems->Strings[2]=asksnmp.epon_distance(SelectedIP,askset.snmp_comuniti,ifindex);
        if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"distance",IS->SubItems->Strings[2]);

      }catch(...){
        IS->ImageIndex=2;
      }
      ShowProgres3(jj);
      jj++;
      Application->ProcessMessages();
}

for(int i=0; i<Form1->ListView2->Items->Count; i++){
      if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
      }
      if(IS->ImageIndex==2){
       jj++;
       continue;
      }
      ifindex=Form1->ListView2->Items->Item[i]->Caption;
      ifindex=EPON.getIfindex(ifindex);
      try{
        IS->SubItems->Strings[3]=asksnmp.epon_uptime(SelectedIP,askset.snmp_comuniti,ifindex);
        if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"time",IS->SubItems->Strings[3]);
      }catch(...){
        IS->ImageIndex=2;
      }
      ShowProgres3(jj);
      jj++;
      Application->ProcessMessages();
}
ONUREAD=false;
srt/=cn;
srr/=cn;
temp=Form1->Label2->Caption.c_str();
temp.mdel("   |*");
temp+="   |   ";
temp+="Середні сигнали: ";
temp+=(int)srt;
temp+=" / ";
temp+=(int)srr;
temp+=" dbm";
Form1->Label2->Caption=temp.charstr();
WriteCombobox();
ShowProgres(0);
Form1->ListView2->Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button8Click(TObject *Sender)
{
        SELFINDNAME=false;
        if(Form1->Edit3->Text!=""){
        AnsiString s;
        Tmstr temp(MBYF);
            for(int i=Form1->ListView2->Items->Count-1; i>=0;i--){
                try{
                s=Form1->Edit3->Text;
                temp=Form1->ListView2->Items->Item[i]->Caption.c_str();
                temp+="\n";
                s="*"+s+"\n";
                if(!temp.msearch(s.c_str())){
                        Form1->ListView2->Items->Delete(i);
                }
                }catch(...){
                        Form1->ListView2->Items->Delete(i);
                }
            }
        }
        showCountColums();
        Form1->ListView2->Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormResize(TObject *Sender)
{
 Form1->ListView2->Height=Form1->ClientHeight-SIZETOP;
 Form1->Label2->Top=Form1->ClientHeight;
 Form1->ListView3->Columns->Items[0]->Width-=25;
 Form1->StatusBar1->Repaint();      
}
//---------------------------------------------------------------------------







void __fastcall TForm1::ListView3CustomDrawItem(TCustomListView *Sender,
      TListItem *Item, TCustomDrawState State, bool &DefaultDraw)
{
        try{
        if(Item->Caption=="All"){
                Sender->Canvas->Brush->Color=0xffdddc;
                EPONCOLOR=Sender->Canvas->Brush->Color;
                return;
        }
        if(StrToInt(Item->SubItems->Strings[1])<=0){
                Sender->Canvas->Brush->Color=0xdddddd;
        }else if(StrToInt(Item->SubItems->Strings[1])>60){
                Sender->Canvas->Brush->Color=0xddffff;
        }
        }catch(...){
        }
        EPONCOLOR=Sender->Canvas->Brush->Color;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView1CustomDrawItem(TCustomListView *Sender,
      TListItem *Item, TCustomDrawState State, bool &DefaultDraw)
{
        if(OLTREAD) return;
        try{
          if(StrToInt(Item->SubItems->Strings[ID_OLT_TEMPERATURA])>80){
                Sender->Canvas->Brush->Color=0xaaaaff;
          }else if(StrToInt(Item->SubItems->Strings[ID_OLT_TEMPERATURA])>70){
                Sender->Canvas->Brush->Color=0xaaffff;
          }
          if(StrToInt(Item->SubItems->Strings[ID_OLT_CPU])>=90){
                Sender->Canvas->Brush->Color=0xaaaaff;
          }else if(StrToInt(Item->SubItems->Strings[ID_OLT_CPU])>=80){
                Sender->Canvas->Brush->Color=0xaaffff;
          }
        }catch(...){
            //Sender->Canvas->Brush->Color=0xaaaaaa;
        }
}
//---------------------------------------------------------------------------
int BRUSHCOLOR=0;

void __fastcall TForm1::ListView2CustomDrawItem(TCustomListView *Sender,
      TListItem *Item, TCustomDrawState State, bool &DefaultDraw)
{
if(ONUREAD) return;
        try{
        if(Item->ImageIndex==2){
                Sender->Canvas->Brush->Color=0xdddddd;
        }
        if(StrToInt(Item->SubItems->Strings[ID_ONU_DISTANCE])>=20000){
                Sender->Canvas->Brush->Color=0xaaaaff;
        }
        }catch(...){
        }
        try{
        Tmstr temp(MBYF);
        temp=Item->SubItems->Strings[ID_ONU_TX].c_str();
        float f=temp.real();
        temp=Item->SubItems->Strings[ID_ONU_RX].c_str();
        float f2=temp.real();
        if(temp.length()!=0){
        if(((f<-26)||(f>-15))||((f2<-30)||(f2>-15))){
                Sender->Canvas->Brush->Color=0xaaffff;
        }
        if(((f<-27)||(f>-10))||((f2<-32)||(f2>-10))){
                Sender->Canvas->Brush->Color=0xaaaaff;
        }
        }
        }catch(...){
        }
        try{
        if(SELFINDMAC){
                if(Edit1->Text=="") SELFINDMAC=false;
                else{
                Tmstr str(MBYF);
                str=Item->SubItems->Strings[7].c_str();
                if(str[Edit1->Text.c_str()]){
                   Sender->Canvas->Brush->Color=0xffaaff;
                }
                }
        }
        if(SELFINDNAME){
                if(Edit3->Text=="") SELFINDNAME=false;
                else{
                Tmstr str(MBYF);
                str=Item->Caption.c_str();
                if(str[Edit3->Text.c_str()]){
                   Sender->Canvas->Brush->Color=0xffaaff;
                }
                }
        }
        }catch(...){
        }
        BRUSHCOLOR=Sender->Canvas->Brush->Color;
}
//---------------------------------------------------------------------------




void __fastcall TForm1::ListView1ColumnClick(TObject *Sender,
      TListColumn *Column)
{
if(Column->Index==SortIndex){
        SortVec++;
        SortVec&=1;
        SortIndex=Column->Index;
        Form1->ListView1->AlphaSort();
}else{
        SortVec=0;
        SortIndex=Column->Index;
        Form1->ListView1->AlphaSort();
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView1Compare(TObject *Sender, TListItem *Item1,
      TListItem *Item2, int Data, int &Compare)
{
try{
        Tmstr temp1(MBYF);
        Tmstr temp2(MBYF);
        if(SortIndex==0){
                temp1=Item1->Caption.c_str();
                temp2=Item2->Caption.c_str();
        }else{
                temp1=Item1->SubItems->Strings[SortIndex-1].c_str();
                temp2=Item2->SubItems->Strings[SortIndex-1].c_str();
        }
        int i1=temp1.integer();
        int i2=temp2.integer();
        if(i1==i2) {
                Compare=0;
        }else if(i1>i2){
                if(SortVec==0){
                        Compare=-1;
                }else{
                        Compare=1;
                }
        }else{
               if(SortVec==0){
                        Compare=1;
                }else{
                        Compare=-1;
                }
        }
}catch(...){
 Compare=0;
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView3ColumnClick(TObject *Sender,
      TListColumn *Column)
{
if(Column->Index==SortIndex){
        SortVec++;
        SortVec&=1;
        SortIndex=Column->Index;
        Form1->ListView3->AlphaSort();
}else{
        SortVec=0;
        SortIndex=Column->Index;
        Form1->ListView3->AlphaSort();
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView3Compare(TObject *Sender, TListItem *Item1,
      TListItem *Item2, int Data, int &Compare)
{
try{
       Tmstr temp1(MBYF);
        Tmstr temp2(MBYF);
        if(SortIndex==0){
                temp1=Item1->Caption.c_str();
                temp2=Item2->Caption.c_str();
        }else{
                temp1=Item1->SubItems->Strings[SortIndex-1].c_str();
                temp2=Item2->SubItems->Strings[SortIndex-1].c_str();
        }
        int i1=temp1.integer();
        int i2=temp2.integer();
        if(i1==i2) {
                Compare=0;
        }else if(i1>i2){
                if(SortVec==0){
                        Compare=-1;
                }else{
                        Compare=1;
                }
        }else{
               if(SortVec==0){
                        Compare=1;
                }else{
                        Compare=-1;
                }
        }
}catch(...){
 Compare=0;
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView2ColumnClick(TObject *Sender,
      TListColumn *Column)
{

if(Column->Index==SortIndex){
        SortVec++;
        SortVec&=1;
        SortIndex=Column->Index;
        Form1->ListView2->AlphaSort();
}else{
        SortVec=0;
        SortIndex=Column->Index;
        Form1->ListView2->AlphaSort();
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView2Compare(TObject *Sender, TListItem *Item1,
      TListItem *Item2, int Data, int &Compare)
{
try{
        Tmstr temp1(MBYF);
        Tmstr temp2(MBYF);
        if(SortIndex==0){
                temp1=Item1->Caption.c_str();
                temp2=Item2->Caption.c_str();
        }else{
                temp1=Item1->SubItems->Strings[SortIndex-1].c_str();
                temp2=Item2->SubItems->Strings[SortIndex-1].c_str();
        }
        int i1=temp1.integer();
        int i2=temp2.integer();
        if(i1==i2) {
                Compare=0;
        }else if(i1>i2){
                if(SortVec==0){
                        Compare=-1;
                }else{
                        Compare=1;
                }
        }else{
               if(SortVec==0){
                        Compare=1;
                }else{
                        Compare=-1;
                }
        }
}catch(...){
 Compare=0;
}        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N22Click(TObject *Sender)
{
        ShowWindow(Application->Handle,SW_HIDE);
        ShowWindow(Form1->Handle,SW_HIDE);
        WinExec(Application->ExeName.c_str(),SW_NORMAL);
}
//---------------------------------------------------------------------------

extern AnsiString getMAC();

void __fastcall TForm1::MAC2Click(TObject *Sender)
{
     AnsiString ip;
     AnsiString MAC=getMAC();
     if(MAC=="") return;
     AnsiString ts;
     AnsiString ifindex;
     Tmstr temp(MBYF);
     Form1->ProgressBar2->Max=ListView1->Items->Count-1;
     Form1->ProgressBar2->Visible=true;
     for(int i=0; i<ListView1->Items->Count; i++){
        AllEnable(false);
        Form1->ProgressBar2->Position=i;
        Application->ProcessMessages();
        ip=ListView1->Items->Item[i]->Caption;
        try{
        myCountPort=StrToInt(ListView1->Items->Item[i]->SubItems->Strings[8]);
        }catch(...){};
        EPON.write(asksnmp.epon_name(ip,askset.snmp_comuniti));
        for(int j=0; j<EPON.count(); j++){
           temp=EPON.getNameLine(j).c_str();
           if(!temp[":"]) continue;
           ifindex=EPON.getIfindexLine(j);
           Application->ProcessMessages();
           ts=asksnmp.epon_mac(ip,askset.snmp_comuniti,ifindex);
           temp=ts.c_str();
           if(temp.msearch(MAC.c_str())){
                SelectedIP=ip;
                ShowEPON("");
                Form1->TabSheet2->TabVisible=true;
                Form1->PageControl1->ActivePage=Form1->TabSheet2;
                Form1->ListView2->Items->Clear();
                ItemSelected=Form1->ListView2->Items->Add();
                ItemSelected->Caption=EPON.getNameLine(j);
                ItemSelected->ImageIndex=1;
                temp=EPON.getNameLine(j).c_str();
                SelectedEPON=temp.charstr();
                Form1->StatusBar1->Panels->Items[0]->Text=ListView1->Items->Item[i]->SubItems->Strings[0];
                /////////////////////////////////////////////////////////////////////////
                while(ItemSelected->SubItems->Count<7) ItemSelected->SubItems->Add("");
                ItemSelected->SubItems->Add(ts);
                ItemSelected->SubItems->Add("");
                ItemSelected->SubItems->Add("");
                ListView2Click(Sender);
                //////////////////////////////////////////////////////////////////////////
                goto mi;
           }
        }
     }
     ShowMessage("MAC-адресу не знайдено\nабо прочитано не всі ONU");
     mi:
     Form1->ProgressBar2->Max=1000;
     Form1->ProgressBar2->Visible=false;
     AllEnable(true);
}
//---------------------------------------------------------------------------




void __fastcall TForm1::Edit1Change(TObject *Sender)
{
SELFINDMAC=true;
Form1->ListView2->Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Action1Execute(TObject *Sender)
{
       if(CMD) ShowMessage(askset.appid);        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Action3Execute(TObject *Sender)
{
        if(CMD) CMD=false;
        else CMD=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Action2Execute(TObject *Sender)
{
        if(CMD) ShowMessage(askset.telnet_pass);        
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Action4Execute(TObject *Sender)
{
 ShowMessage(getenv("APPDATA"));        
}
//---------------------------------------------------------------------------

  extern bool gettimeout(AnsiString &t);
void __fastcall TForm1::N24Click(TObject *Sender)
{
   AnsiString s=askset.timeout;
   if(gettimeout(s)) {
        askset.timeout=s;
        TIMEOUT=StrToInt(s);
   }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
        askset.save();
        OLT.save();
        ShowWindow(Form1->Handle,SW_HIDE);
        Form7->Close();
        ShowWindow(Application->Handle,SW_HIDE);
        askmylicense();
        deinit();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Edit3Change(TObject *Sender)
{
SELFINDNAME=true;
Form1->ListView2->Repaint();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::ListView2CustomDrawSubItem(TCustomListView *Sender,
      TListItem *Item, int SubItem, TCustomDrawState State,
      bool &DefaultDraw)
{
       if(SubItem==10){
           if(Item->SubItems->Strings[9]=="connect"){
                 Sender->Canvas->Font->Color=0x00aa00;
                 Sender->Canvas->Brush->Color=BRUSHCOLOR;
           }else{
                 Sender->Canvas->Font->Color=0x0000aa;
                 Sender->Canvas->Brush->Color=BRUSHCOLOR;
           }
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView3Click(TObject *Sender)
{
        ShowSelectPort();        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView1Click(TObject *Sender)
{

try{
        SelectedIP=ListView1->Selected->Caption;
        SelectedEPON="";

        myCountPort=StrToInt(ListView1->Selected->SubItems->Strings[8]);
        }catch(...){};
        try{
        if(ListView1->Selected->SubItems->Count>0) Form1->StatusBar1->Panels->Items[0]->Text=ListView1->Selected->SubItems->Strings[0];
        }catch(...){
        Form1->StatusBar1->Panels->Items[0]->Text=SelectedIP;
        }

try{
        TListItem *l=Form1->ListView1->Selected;
        AnsiString s=SelectedIP;
     AnsiString ss = asksnmp.olt_name(s,askset.snmp_comuniti);
     if(ss=="") return;
     l->SubItems->Strings[0]=ss;
     l->SubItems->Strings[1]=asksnmp.vendor(s,askset.snmp_comuniti);
     l->SubItems->Strings[2]=asksnmp.model(s,askset.snmp_comuniti);
     l->SubItems->Strings[3]=asksnmp.firmware(s,askset.snmp_comuniti);
     l->SubItems->Strings[4]=asksnmp.hardware(s,askset.snmp_comuniti);
     l->SubItems->Strings[5]=asksnmp.temperature(s,askset.snmp_comuniti);
     l->SubItems->Strings[6]=asksnmp.cpu_usage(s,askset.snmp_comuniti);
     int o,f,r;
     r=asksnmp.registered_onu(s,askset.snmp_comuniti);
     o=asksnmp.online_onu(s,askset.snmp_comuniti);
     f=r-o;
     l->SubItems->Strings[7]=IntToStr(o)+" / "+IntToStr(f);
     l->SubItems->Strings[8]=IntToStr(r);
     if(askset.db=="1") OLT_to_db(l);  //Запис в Базу Даних
}catch(...){};

}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView2ColumnRightClick(TObject *Sender,
      TListColumn *Column, TPoint &Point)
{
ListView2->PopupMenu->AutoPopup=false;
AnsiString ifindex;
float srt,srr;
int cn=0;
srt=0;
srr=0;
Tmstr temp(MBYF);
ShowProgres3set((Form1->ListView2->Items->Count));
int jj=1;
///////////////////////////////////////////////////
if(Column->Index==1){
for(int i=0; i<Form1->ListView2->Items->Count; i++){
      if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
      }
      IS->ImageIndex=1;
      ifindex=Form1->ListView2->Items->Item[i]->Caption;
      ifindex=EPON.getIfindex(ifindex);
      try{
         AnsiString sig=asksnmp.epon_tx(SelectedIP,askset.snmp_comuniti,ifindex);
        temp=sig.c_str();
        srt+=temp.real();
        cn++;
        if(sig=="") IS->ImageIndex=2;
        IS->SubItems->Strings[0]=sig;
        if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"tx",IS->SubItems->Strings[0]);

      }catch(...){
      IS->ImageIndex=2;
      IS->SubItems->Strings[0]="";
      IS->SubItems->Strings[1]="";
      IS->SubItems->Strings[2]="";
      }
      ShowProgres3(jj);
      jj++;
      Application->ProcessMessages();
}
goto mi;
}
Application->ProcessMessages();
if(Column->Index==2){
for(int i=0; i<Form1->ListView2->Items->Count; i++){
      if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
      }
      if(IS->ImageIndex==2){
       jj++;
       continue;
      }
      ifindex=Form1->ListView2->Items->Item[i]->Caption;
      ifindex=EPON.getIfindex(ifindex);
      try{
         AnsiString sig=asksnmp.epon_rx(SelectedIP,askset.snmp_comuniti,ifindex);
        temp=sig.c_str();
        srr+=temp.real();
        if(sig=="") IS->ImageIndex=2;
        IS->SubItems->Strings[1]=sig;
        if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"rx",IS->SubItems->Strings[1]);
      }catch(...){
        IS->ImageIndex=2;
      }
      ShowProgres3(jj);
      jj++;
      Application->ProcessMessages();
}
goto mi;
}
if(Column->Index==3){
for(int i=0; i<Form1->ListView2->Items->Count; i++){
      if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
      }
      if(IS->ImageIndex==2){
       jj++;
       continue;
      }
      ifindex=Form1->ListView2->Items->Item[i]->Caption;
      ifindex=EPON.getIfindex(ifindex);
      try{
        IS->SubItems->Strings[2]=asksnmp.epon_distance(SelectedIP,askset.snmp_comuniti,ifindex);
        if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"distance",IS->SubItems->Strings[2]);
      }catch(...){
        IS->ImageIndex=2;
      }
      ShowProgres3(jj);
      jj++;
      Application->ProcessMessages();
}
goto mi;
}
if(Column->Index==4){
for(int i=0; i<Form1->ListView2->Items->Count; i++){
      if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
      }
      if(IS->ImageIndex==2){
       jj++;
       continue;
      }
      ifindex=Form1->ListView2->Items->Item[i]->Caption;
      ifindex=EPON.getIfindex(ifindex);
      try{
        IS->SubItems->Strings[3]=asksnmp.epon_uptime(SelectedIP,askset.snmp_comuniti,ifindex);
        if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"time",IS->SubItems->Strings[3]);
      }catch(...){
        IS->ImageIndex=2;
      }
      ShowProgres3(jj);
      jj++;
      Application->ProcessMessages();
}
goto mi;
}
///////////////////////////////////////////////////


if(Column->Index==5){
for(int i=0; i<Form1->ListView2->Items->Count; i++){
   if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
   }
   ifindex=IS->Caption;
   ifindex=EPON.getIfindex(ifindex);
   IS->SubItems->Strings[4]=asksnmp.epon_vendor(SelectedIP,askset.snmp_comuniti,ifindex);
   if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"vendor",IS->SubItems->Strings[4]);
   ShowProgres3(jj);
   jj++;
   Application->ProcessMessages();
}
goto mi;
}
if(Column->Index==6){
for(int i=0; i<Form1->ListView2->Items->Count; i++){
   if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
   }
   ifindex=IS->Caption;
   ifindex=EPON.getIfindex(ifindex);
   IS->SubItems->Strings[5]=asksnmp.epon_model(SelectedIP,askset.snmp_comuniti,ifindex);
   if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"model",IS->SubItems->Strings[5]);
   ShowProgres3(jj);
   jj++;
   Application->ProcessMessages();
}
goto mi;
}
if(Column->Index==7){
for(int i=0; i<Form1->ListView2->Items->Count; i++){
   if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
   }
   ifindex=IS->Caption;
   ifindex=EPON.getIfindex(ifindex);
   IS->SubItems->Strings[6]=asksnmp.epon_vlan(SelectedIP,askset.snmp_comuniti,ifindex);
   if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"vlan",IS->SubItems->Strings[6]);
   ShowProgres3(jj);
   jj++;
   Application->ProcessMessages();
}
goto mi;
}
if(Column->Index==8){
for(int i=0; i<Form1->ListView2->Items->Count; i++){
   if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
   }
   ifindex=IS->Caption;
   ifindex=EPON.getIfindex(ifindex);
   IS->SubItems->Strings[7]=asksnmp.epon_mac(SelectedIP,askset.snmp_comuniti,ifindex);
   if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"mac",IS->SubItems->Strings[7]);
   ShowProgres3(jj);
   jj++;
   Application->ProcessMessages();
}
goto mi;
}
if(Column->Index==9){
for(int i=0; i<Form1->ListView2->Items->Count; i++){
   if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
   }
   ifindex=IS->Caption;
   ifindex=EPON.getIfindex(ifindex);
   IS->SubItems->Strings[8]=asksnmp.epon_software(SelectedIP,askset.snmp_comuniti,ifindex);
   if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"version",IS->SubItems->Strings[8]);
   ShowProgres3(jj);
   jj++;
   Application->ProcessMessages();
}
goto mi;
}
if(Column->Index==10){
for(int i=0; i<Form1->ListView2->Items->Count; i++){
   if((Form1->ListView2->SelCount>1)&&(!(Form1->ListView2->Items->Item[i]->Selected))){
        jj++;
        continue;
   }
   ifindex=IS->Caption;
   ifindex=EPON.getIfindex(ifindex);
   AnsiString p=asksnmp.epon_status(SelectedIP,askset.snmp_comuniti,ifindex);
        if(p=="1") {
           p="connect";
        }else{
           p="down";
           IS->ImageIndex=2;
        }
   IS->SubItems->Strings[9]=p;
   if(askset.db=="1") ONU_to_db(SelectedIP,IS->Caption,"status",IS->SubItems->Strings[9]);
   ShowProgres3(jj);
   jj++;
   Application->ProcessMessages();
}
}
mi:
ListView2->Repaint();
WriteCombobox();
ShowProgres(0);
}
//---------------------------------------------------------------------------




void __fastcall TForm1::ListView3CustomDrawSubItem(TCustomListView *Sender,
      TListItem *Item, int SubItem, TCustomDrawState State,
      bool &DefaultDraw)
{
try{
        if(SubItem==2){
         if(StrToInt(Item->SubItems->Strings[1])==64){
          Sender->Canvas->Font->Color=0x0000cc;
         }
        }
}catch(...){}
Sender->Canvas->Brush->Color=EPONCOLOR;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N25Click(TObject *Sender)
{
        if(askset.db=="0"){
                askset.db="1";
                N25->Checked=true;
                
        }else{
                askset.db="0";
                N25->Checked=false;
        }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::N26Click(TObject *Sender)
{
        Form1->TabSheet3->TabVisible=true;
        Form1->PageControl1->ActivePage=Form1->TabSheet3;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
        ListView4->Clear();
        AnsiString col=ComboBox1->Text;
        AnsiString op=ComboBox3->Text;
        AnsiString val=Edit4->Text;
        if(op=="~"){
                 op=" LIKE ";
                 val="%"+val+"%";
        }
        if(op=="!~"){
                 op=" NOT LIKE ";
                 val="%"+val+"%";
        }
        select("onu",col+op+"'"+val+"'");
        for(int i=0; i<COUNTL; i++){
                TListItem *l=ListView4->Items->Add();
                l->Caption=get_value(i,ListView4->Column[0]->Caption);
                for(int j=1; j<ListView4->Columns->Count; j++){
                       l->SubItems->Add(get_value(i,ListView4->Column[j]->Caption));
                }
        }
        Label7->Caption=IntToStr(ListView4->Items->Count)+" шт.";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView4ColumnClick(TObject *Sender,
      TListColumn *Column)
{
if(Column->Index==SortIndex){
        SortVec++;
        SortVec&=1;
        SortIndex=Column->Index;
        Form1->ListView4->AlphaSort();
}else{
        SortVec=0;
        SortIndex=Column->Index;
        Form1->ListView4->AlphaSort();
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView4Compare(TObject *Sender, TListItem *Item1,
      TListItem *Item2, int Data, int &Compare)
{
try{
        Tmstr temp1(MBYF);
        Tmstr temp2(MBYF);
        if(SortIndex==0){
                temp1=Item1->Caption.c_str();
                temp2=Item2->Caption.c_str();
        }else{
                temp1=Item1->SubItems->Strings[SortIndex-1].c_str();
                temp2=Item2->SubItems->Strings[SortIndex-1].c_str();
        }
        int i1=temp1.integer();
        int i2=temp2.integer();
        if(i1==i2) {
                Compare=0;
        }else if(i1>i2){
                if(SortVec==0){
                        Compare=-1;
                }else{
                        Compare=1;
                }
        }else{
               if(SortVec==0){
                        Compare=1;
                }else{
                        Compare=-1;
                }
        }
}catch(...){
 Compare=0;
}              
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N27Click(TObject *Sender)
{
        read_scripts(ListView5);
        Form1->TabSheet4->TabVisible=true;
        Form1->PageControl1->ActivePage=Form1->TabSheet4;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
        AnsiString name=LabeledEdit1->Text;
        AnsiString type="";
        if(RadioButton1->Checked) type="SNMP";
        if(RadioButton2->Checked) type="Telnet";
        AnsiString cod=Edit5->Text;
        AnsiString mask=LabeledEdit2->Text;
        if(add_script(name,type,cod,mask)) ListView5->Items->Add()->Caption=name;
}
//---------------------------------------------------------------------------




void __fastcall TForm1::ListView5Click(TObject *Sender)
{
        try{
           select("user_script","name='"+ListView5->Selected->Caption+"'");
           if(COUNTL==1){
                LabeledEdit1->Text=get_value(0,"name");
                AnsiString type=get_value(0,"type");
                if(type=="SNMP") RadioButton1->Checked=true; else RadioButton2->Checked=true;
                LabeledEdit2->Text=get_value(0,"mask");
                Edit5->Text=get_script_cod(LabeledEdit1->Text);
           }
        }catch(...){};
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button9Click(TObject *Sender)
{
        AnsiString name=LabeledEdit1->Text;
        AnsiString type="";
        if(RadioButton1->Checked) type="SNMP";
        if(RadioButton2->Checked) type="Telnet";
        AnsiString cod=Edit5->Text;
        AnsiString mask=LabeledEdit2->Text;
        update_script(name,type,cod,mask);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RadioButton1Click(TObject *Sender)
{
Button9Click(Sender);        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RadioButton2Click(TObject *Sender)
{
Button9Click(Sender);        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::LabeledEdit2Change(TObject *Sender)
{
Button9Click(Sender);        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Memo1Change(TObject *Sender)
{
Button9Click(Sender);        
}
//---------------------------------------------------------------------------

extern AnsiString getScriptName();
void __fastcall TForm1::Script1Click(TObject *Sender)
{
     AnsiString Sname =getScriptName();
     AnsiString Name = ListView2->Selected->Caption;
     AnsiString Ifindex = EPON.getIfindex(Name);
     AnsiString cod=get_script_cod(Sname);
     Tmstr str(1024);
     str=cod.c_str();
     str.replaceall("[name]", Name.c_str());
     str.replaceall("[ifindex]", Ifindex.c_str());
     cod=str.charstr();
     AnsiString value;
     _snmp->QuickSend(cod,askset.snmp_comuniti,SelectedIP,value);
     ShowMessage(Sname+": "+value);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit5Change(TObject *Sender)
{
Button9Click(Sender);        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TxPowerdBm1Click(TObject *Sender)
{
try{
 AnsiString s=asksnmp.epon_txpower(SelectedIP,askset.snmp_comuniti,EPON.getIfindex(ListView3->Selected->Caption));
 ShowMessage("TxPower(dBm): "+s);
}catch(...){};
}
//---------------------------------------------------------------------------

void __fastcall TForm1::OIDs1Click(TObject *Sender)
{
try{
     AnsiString Sname =getScriptName();
     AnsiString Name = ListView3->Selected->Caption;
     AnsiString Ifindex = EPON.getIfindex(Name);
     AnsiString cod=get_script_cod(Sname);
     Tmstr str(1024);
     str=cod.c_str();
     str.replaceall("[name]", Name.c_str());
     str.replaceall("[ifindex]", Ifindex.c_str());
     cod=str.charstr();
     AnsiString value;
     _snmp->QuickSend(cod,askset.snmp_comuniti,SelectedIP,value);
     ShowMessage(Sname+": "+value);
}catch(...){};
}
//---------------------------------------------------------------------------

void __fastcall TForm1::BitBtn1Click(TObject *Sender)
{
SaveDialog1->Filter="CSV";
if(SaveDialog1->Execute()){
        TStringList *s=new TStringList();
        AnsiString t;
        Tmstr st(1024);
        for(int i=0; i<ListView2->Items->Count; i++){
              if((ListView2->SelCount>1)&&(ListView2->Items->Item[i]->Selected==false)) continue;
              t=ListView2->Items->Item[i]->Caption;
              for(int j=0; j<ListView2->Items->Item[i]->SubItems->Count; j++){
                        t+="\t";
                        st=ListView2->Items->Item[i]->SubItems->Strings[j].c_str();
                        st.delall("\r");
                        st.delall("\n");
                        st.delall("\t");
                        st.delall("\b");
                        t+=st.charstr();

              }
              s->Add(t);
        }
        s->SaveToFile(SaveDialog1->FileName+".csv");
}

}
//---------------------------------------------------------------------------

void __fastcall TForm1::BitBtn2Click(TObject *Sender)
{
SaveDialog1->Filter="CSV";
if(SaveDialog1->Execute()){
        TStringList *s=new TStringList();
        AnsiString t;
        Tmstr st(1024);
        for(int i=0; i<ListView4->Items->Count; i++){
              if((ListView4->SelCount>1)&&(ListView4->Items->Item[i]->Selected==false)) continue;
              t=ListView4->Items->Item[i]->Caption;
              for(int j=0; j<ListView4->Items->Item[i]->SubItems->Count; j++){
                        t+="\t";
                        st=ListView4->Items->Item[i]->SubItems->Strings[j].c_str();
                        st.delall("\r");
                        st.delall("\n");
                        st.delall("\t");
                        st.delall("\b");
                        t+=st.charstr();

              }
              s->Add(t);
        }
        s->SaveToFile(SaveDialog1->FileName+".csv");
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView4CustomDrawItem(TCustomListView *Sender,
      TListItem *Item, TCustomDrawState State, bool &DefaultDraw)
{
try{
        if(Item->SubItems->Strings[9]=="down"){
                Sender->Canvas->Brush->Color=0xdddddd;
        }
        if(StrToInt(Item->SubItems->Strings[ID_ONU_DISTANCE])>=20000){
                Sender->Canvas->Brush->Color=0xaaaaff;
        }
        }catch(...){
        }
        try{
        Tmstr temp(MBYF);
        temp=Item->SubItems->Strings[ID_ONU_TX].c_str();
        float f=temp.real();
        temp=Item->SubItems->Strings[ID_ONU_RX].c_str();
        float f2=temp.real();
        if(temp.length()!=0){
        if(((f<-26)||(f>-15))||((f2<-30)||(f2>-15))){
                Sender->Canvas->Brush->Color=0xaaffff;
        }
        if(((f<-27)||(f>-10))||((f2<-32)||(f2>-10))){
                Sender->Canvas->Brush->Color=0xaaaaff;
        }
        }
        }catch(...){
        }
        try{
        if(SELFINDMAC){
                if(Edit1->Text=="") SELFINDMAC=false;
                else{
                Tmstr str(MBYF);
                str=Item->SubItems->Strings[7].c_str();
                if(str[Edit1->Text.c_str()]){
                   Sender->Canvas->Brush->Color=0xffaaff;
                }
                }
        }
        if(SELFINDNAME){
                if(Edit3->Text=="") SELFINDNAME=false;
                else{
                Tmstr str(MBYF);
                str=Item->Caption.c_str();
                if(str[Edit3->Text.c_str()]){
                   Sender->Canvas->Brush->Color=0xffaaff;
                }
                }
        }
        }catch(...){
        }
}
//---------------------------------------------------------------------------

bool getduble(AnsiString mac){
int n=0;
if(mac=="") return false;
  for(int i=0; i<COUNTL; i++){
      if(get_value(i,"mac")==mac){
                n++;
                if(n>1) break;
      }
  }
  if(n>1) return true; else return false;
}

void __fastcall TForm1::BitBtn3Click(TObject *Sender)
{

        ListView4->Clear();
        select("onu","");
        for(int i=0; i<COUNTL; i++){
                AnsiString mac=get_value(i,"mac");
                if(getduble(mac)){
                        TListItem *l=ListView4->Items->Add();
                        l->Caption=get_value(i,ListView4->Column[0]->Caption);
                        for(int j=1; j<ListView4->Columns->Count; j++){
                                l->SubItems->Add(get_value(i,ListView4->Column[j]->Caption));
                        }
                }
        }
        Label7->Caption=IntToStr(ListView4->Items->Count)+" шт.";
}
//---------------------------------------------------------------------------

