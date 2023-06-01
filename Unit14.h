//---------------------------------------------------------------------------

#ifndef Unit14H
#define Unit14H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TForm14 : public TForm
{
__published:	// IDE-managed Components
        TEdit *Edit1;
        TButton *Button1;
        TEdit *Edit2;
        void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm14(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm14 *Form14;
//---------------------------------------------------------------------------
#endif
