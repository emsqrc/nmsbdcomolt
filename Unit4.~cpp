//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit4.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm4 *Form4;

bool e =false;

bool getSNMP(AnsiString snmp){
 e=false;
 Form4->Edit1->Text=snmp;
 Form4->ShowModal();
 return e;
}

//---------------------------------------------------------------------------
__fastcall TForm4::TForm4(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm4::Button1Click(TObject *Sender)
{
  e=true;
  Form4->Close();        
}
//---------------------------------------------------------------------------
