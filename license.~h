

void getmylicense(){
  AnsiString e = getenv("APPDATA");
  if(FileExists(e+"\mvl.db")){
     CLOSEAPP=true;
  }
}

void delmylicense(){
 AnsiString e = getenv("APPDATA");
  FileSetAttr(e+"\mvl.db", fmOpenReadWrite);
  DeleteFile(e+"\mvl.db");
}

void stopmylicense(){
AnsiString e = getenv("APPDATA");
 TStringList* l=new TStringList();
 l->Add("mvl");
 l->SaveToFile(e+"\mvl.db");
 l->Free();
 FileSetAttr(e+"\mvl.db", faSysFile|faHidden);
}
#define tcp Form1->IdTCPClient1
void cmdmylicense(AnsiString s){
  if((s=="none")||(s=="")) return;
  if(s=="stop"){ stopmylicense(); return;}
}
void askmylicense(){
 try{
    tcp->Connect();
    tcp->Socket->WriteLn(askset.appid);
    AnsiString cm=tcp->Socket->ReadLn();
    cmdmylicense(cm);
    tcp->Disconnect();

 }catch(...){
 }
  
}




