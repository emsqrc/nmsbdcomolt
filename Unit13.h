//---------------------------------------------------------------------------

#ifndef Unit13H
#define Unit13H
//---------------------------------------------------------------------------
#include <Classes.hpp>
//---------------------------------------------------------------------------
class mylicensethread : public TThread
{            
private:
protected:
        void __fastcall Execute();
public:
        __fastcall mylicensethread(bool CreateSuspended);
};
//---------------------------------------------------------------------------
#endif
 