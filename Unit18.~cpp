//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit18.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm18 *Form18;
extern void read_scripts(TListView *l);


AnsiString sel="";

AnsiString getScriptName(){
        sel="";
   read_scripts(Form18->ListView1);
   Form18->Caption="";
   Form18->ShowModal();
   return sel;
}

//---------------------------------------------------------------------------
__fastcall TForm18::TForm18(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm18::ListView1Click(TObject *Sender)
{
sel=Form18->ListView1->Selected->Caption;
        Form18->Caption=sel;
Form18->Close();        
}
//---------------------------------------------------------------------------

