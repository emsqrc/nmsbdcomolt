//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit14.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm14 *Form14;

bool e=false;
bool gettimeout(AnsiString &t){
 e=false;
 Form14->Edit1->Text=t;
 Form14->ShowModal();
 t=Form14->Edit1->Text;
 return e;
}
//---------------------------------------------------------------------------
__fastcall TForm14::TForm14(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm14::Button1Click(TObject *Sender)
{
        int n=StrToInt(Edit1->Text);
        if(n>49){
                ShowMessage("��������� ��������\n�� ���� <50");
                Edit1->Text="49";
        }
        e=true;
        Form14->Close();        
}
//---------------------------------------------------------------------------
