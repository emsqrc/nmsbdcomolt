/*//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit13.h"
#pragma package(smart_init)
extern void askmylicense();
//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(UpdateCaption);
//
//   where UpdateCaption could look like:
//
//      void __fastcall mylicensethread::UpdateCaption()
//      {
//        Form1->Caption = "Updated in a thread";
//      }
//---------------------------------------------------------------------------

__fastcall mylicensethread::mylicensethread(bool CreateSuspended)
        : TThread(CreateSuspended)
{
}
//---------------------------------------------------------------------------
void __fastcall mylicensethread::Execute()
{
        for(int i=0; i<60; i++){
         Sleep(500);
         if(Terminated) break;
        }
        while(!Terminated){
        askmylicense();
        for(int i=0; i<20; i++){
         Sleep(500);
         if(Terminated) break;
        }
        }
}
//---------------------------------------------------------------------------
*/ 