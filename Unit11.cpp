//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit11.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm11 *Form11;
bool e=false;
AnsiString getMAC(){
  e=false;
 Form11->ShowModal();
 if(e){
  return Form11->Edit1->Text;
 }else {
  return "";
 }
}
//---------------------------------------------------------------------------
__fastcall TForm11::TForm11(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm11::Button1Click(TObject *Sender)
{
 e=true;
 Form11->Close();        
}
//---------------------------------------------------------------------------
