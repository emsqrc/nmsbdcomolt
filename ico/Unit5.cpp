//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit5.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm5 *Form5;
bool e =false;

AnsiString showSetup(AnsiString a){
 e=false;
 Form5->Memo1->Lines->Text=a;
 Form5->ShowModal();
 if(e){
  return Form5->Memo1->Text;
 }else{
  return "";
 }
}

//---------------------------------------------------------------------------
__fastcall TForm5::TForm5(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm5::Button1Click(TObject *Sender)
{
 Form5->Close();        
}
//---------------------------------------------------------------------------
void __fastcall TForm5::Button2Click(TObject *Sender)
{
        e=true;
        Form5->Close();        
}
//---------------------------------------------------------------------------
