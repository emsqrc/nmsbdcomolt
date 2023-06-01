//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
bool e =false;

AnsiString getIP(){
 e=false;
 Form2->ShowModal();
 if(e) return Form2->Edit1->Text;
 else return "";
}

//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm2::Button1Click(TObject *Sender)
{
  e=true;
  Form2->Close();
}
//---------------------------------------------------------------------------
