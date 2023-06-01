//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit6.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm6 *Form6;


bool e =false;

AnsiString showDesk(AnsiString a){
 e=false;
 Form6->Edit1->Text=a;
 Form6->ShowModal();
 if(e){
  return Form6->Edit1->Text;
 }else{
  return "";
 }
}
//---------------------------------------------------------------------------
__fastcall TForm6::TForm6(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm6::Button1Click(TObject *Sender)
{
 Form6->Close();        
}
//---------------------------------------------------------------------------
void __fastcall TForm6::Button2Click(TObject *Sender)
{
        e=true;
        Form6->Close();        
}
//---------------------------------------------------------------------------
