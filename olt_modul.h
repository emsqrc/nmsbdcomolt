#define pathdb "oltdb"

class TOLT{
TStringList *s;

public:
   TOLT(){
      s=new TStringList();

   }
   ~TOLT(){

      s->Free();
   }
   void load(){
   ///////////��������� � ����
     if(FileExists(pathdb)){
        s->LoadFromFile(pathdb);
        while(FileExists(pathdb)) DeleteFile(pathdb);
     }else{
        select("olt_tb","");
        Tmstr str(1024);
        str=get_value(0,"ip").c_str();
        str.replaceall("|","\r\n");
        s->Text=str.charstr();
     }
     ///////////////
      Tmstr str(1024);
      for(int i=0; i<s->Count; i++){
        str=s->Strings[i].c_str();
          if((i>COUNTOLT)) {
                s->Delete(i);
                i-=1;
          }
      }
      }

   void save(){
      //////////////////� ����

   select("olt_tb","");
   clear();
   Tmstr str(1024);
   str=s->Text.c_str();
   str.replaceall("\r\n","|");
   String sa=str.charstr();
   add("ip",sa);
   if(count_lines()==0){
       insert("olt_tb");
   }else{
      update("olt_tb","ip!=''");
   }
   }

   bool FindIP(AnsiString ip){
   bool e=false;
    for(int i=0; i<s->Count; i++){
         if(s->Strings[i]==ip){
          e=true;
          break;
         }
    }
   return e;
   }
   void Add(AnsiString ip){
    if(ip!=""&&(!FindIP(ip))){
     s->Add(ip);
    }
   }
   void Delete(AnsiString ip){
    for(int i=0; i<s->Count; i++){
         if(s->Strings[i]==ip){
          s->Delete(i);
          break;
         }
    }
    }
   TStringList *getList(){
     return s;
   }
};