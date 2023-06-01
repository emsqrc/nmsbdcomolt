//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit12.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm12 *Form12;
bool e=false;
int mytime=30;

bool _asksave(AnsiString &s){
 mytime =30;
 e=false;
 Form12->Label1->Caption="Зберегти зміни прошивки для "+s;
 Form12->Caption=IntToStr(mytime)+" c";
 Form12->ShowModal();
 return e;
}
//---------------------------------------------------------------------------
__fastcall TForm12::TForm12(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm12::Timer1Timer(TObject *Sender)
{
        mytime--;
        Form12->Caption=IntToStr(mytime)+" c";
        if(mytime==0){
                e=true;
                Form12->Close();
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm12::Button1Click(TObject *Sender)
{
  e=true;
  Form12->Close();        
}
//---------------------------------------------------------------------------

void __fastcall TForm12::Button2Click(TObject *Sender)
{
        e=false;
        Form12->Close();        
}
//---------------------------------------------------------------------------

