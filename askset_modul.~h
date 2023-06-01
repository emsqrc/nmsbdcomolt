#define pathsetdb "setdb"

class Task_set{
public:
AnsiString snmp_comuniti;
AnsiString telnet_user;
AnsiString telnet_pass;
AnsiString tftp_ip;
AnsiString appid;
AnsiString timeout;
AnsiString db;

   Task_set(){


   }
   void load(){
    TStringList *s=new TStringList();
     ///////////Прочитати з бази
     if(FileExists(pathsetdb)){
        s->LoadFromFile(pathsetdb);
        while(FileExists(pathsetdb)) DeleteFile(pathsetdb);
     }else{
        select("set_tb","");
        s->Text=get_value(0,"info");
     }
     ///////////////
     Tmstr temp(MBYF);
     temp=s->Text.c_str();
     temp.delall("\r\n");
     temp.decryption("06780179");
     Tmstr temp2(MBYF);
     temp2=temp;
     if(temp2["snmp_com["]){
     temp2.extractminimal("snmp_com[*]");
     temp2.del("snmp_com[");
     temp2.del("]");
     snmp_comuniti=temp2.charstr();
     }else{snmp_comuniti="";}
     temp2=temp;
     if(temp2["telnet_user["]){
     temp2.extractminimal("telnet_user[*]");
     temp2.del("telnet_user[");
     temp2.del("]");
     telnet_user=temp2.charstr();
     }else{telnet_user="";}
     temp2=temp;
     if(temp2["telnet_pass["]){
     temp2.extractminimal("telnet_pass[*]");
     temp2.del("telnet_pass[");
     temp2.del("]");
     telnet_pass=temp2.charstr();
     }else{telnet_pass="";}
     temp2=temp;
     if(temp2["tftp_ip["]){
     temp2.extractminimal("tftp_ip[*]");
     temp2.del("tftp_ip[");
     temp2.del("]");
     tftp_ip=temp2.charstr();
     }else{tftp_ip="";}
     temp2=temp;
     if(temp2["appid["]){
     temp2.extractminimal("appid[*]");
     temp2.del("appid[");
     temp2.del("]");
     appid=temp2.charstr();
     }else {
        randomize();
        appid=APPVERS;
     }
     temp2=temp;
     if(temp2["timeout["]){
     temp2.extractminimal("timeout[*]");
     temp2.del("timeout[");
     temp2.del("]");
     timeout=temp2.charstr();
     }else timeout="2";
      temp2=temp;
     if(temp2["db["]){
     temp2.extractminimal("db[*]");
     temp2.del("db[");
     temp2.del("]");
     db=temp2.charstr();
     }else db="1";
   }
   ~Task_set(){


   }
   void save(){
   Tmstr temp(MBYF);
     temp.add(("snmp_com["+snmp_comuniti+"]").c_str());
     temp.add(("telnet_user["+telnet_user+"]").c_str());
     temp.add(("telnet_pass["+telnet_pass+"]").c_str());
     temp.add(("tftp_ip["+tftp_ip+"]").c_str());
     temp.add(("appid["+appid+"]").c_str());
     temp.add(("timeout["+timeout+"]").c_str());
     temp.add(("db["+db+"]").c_str());
     temp.encryption("06780179");
     TStringList *s=new TStringList();
     s->Text=temp.charstr();


     //////////////////В базу

   select("set_tb","");
   clear();
   add("info",s->Text);
   if(count_lines()==0){
       insert("set_tb");
   }else{
      update("set_tb","info!=''");
   }

     }

};