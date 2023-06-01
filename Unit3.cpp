//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;

bool e =false;

bool getTelnet(AnsiString user, AnsiString pass){
 e=false;
 Form3->Edit1->Text=user;
 Form3->Edit2->Text=pass;
 Form3->ShowModal();
 return e;
}
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm3::Button1Click(TObject *Sender)
{
        e=true;
        Form3->Close();        
}
//---------------------------------------------------------------------------
