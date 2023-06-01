#include "db.h"

void _create_table(){
        clear();
        add("ip");
        add("name");
        add("vendor");
        add("model");
        add("firmware");
        add("hardware");
        add("temp");
        add("cpu");
        add("online_offline");
        add("registered");
        add("datetime");
        create_table("olt");
        clear();
        add("name");
        add("online_offline");
        add("registered");
        add("temp");
        add("datetime");
        add("ip");
        add("ifindex");
        create_table("port");
        clear();
        add("name");
        add("tx");
        add("rx");
        add("distance");
        add("time");
        add("vendor");
        add("model");
        add("vlan");
        add("mac");
        add("version");
        add("status");
        add("datetime");
        add("ip");
        add("ifindex");
        create_table("onu");
        clear();
        add("info");
        create_table("set_tb");
        clear();
        add("ip");
        create_table("olt_tb");
        clear();
        add("name");
        add("type");
        add("cod");
        add("mask");
        create_table("user_script");
}

void ifcreate(){
   if(!FileExists(DBPATH)) _create_table();
}


bool OLT_from_db(TListItem *l){
   String s=l->Caption;
   select("olt","ip='"+s+"'");
   if(count_lines()>0){
       for(int i=0; i<COUNTC-1; i++){
         l->SubItems->Strings[i]=get_value(0,i+1);
       }
   return true;
   }
   return false;
}

void OLT_to_db(TListItem *l){
   String s=l->Caption;
   select("olt","ip='"+s+"'");
   clear();
   add("ip",s);
   add("name",l->SubItems->Strings[0]);
   add("vendor",l->SubItems->Strings[1]);
   add("model",l->SubItems->Strings[2]);
   add("firmware",l->SubItems->Strings[3]);
   add("hardware",l->SubItems->Strings[4]);
   add("temp",l->SubItems->Strings[5]);
   add("cpu",l->SubItems->Strings[6]);
   add("online_offline",l->SubItems->Strings[7]);
   add("registered",l->SubItems->Strings[8]);
   add("datetime",DateTimeToStr(Now()));
   if(count_lines()==0){
       insert("olt");
   }else{
      update("olt","ip='"+s+"'");
   }

}

AnsiString ifindex_from_db(AnsiString ip){
    AnsiString res="";
    select("port","ip='"+ip+"'");
    if(count_lines()>0){
        Tmstr str(1024);
        for(int i=0; i<COUNTL; i++){
             str="name[";
             str+=get_value(i,"name").c_str();
             str+="]";
             str+="ifindex[";
             str+=get_value(i,"ifindex").c_str();
             str+="]";
             str+="\n";
             res+=str.charstr();
        }
    select("onu","ip='"+ip+"'");
    if(COUNTL>0){
        Tmstr str(1024);
        for(int i=0; i<COUNTL; i++){
             str="name[";
             str+=get_value(i,"name").c_str();
             str+="]";
             str+="ifindex[";
             str+=get_value(i,"ifindex").c_str();
             str+="]";
             str+="\n";
             res+=str.charstr();
        }
    }
    }
    return res;
}

bool inlist(AnsiString inna,AnsiString inif, TStringList *outna, TStringList *outif){
        if(inna=="All") return true;
        for(int i=0; i<outna->Count; i++){
           if((outna->Strings[i]==inna)&&(outif->Strings[i]==inif)) return true;
        }
        return false;
}

void ifindex_to_db(AnsiString ip, TStringList *list){
   TStringList *nam=new TStringList();
   TStringList *ifi=new TStringList();
   TStringList *dnam=new TStringList();
   TStringList *difi=new TStringList();
   Tmstr str(1024);                             // для портів
   for(int i=0; i<list->Count; i++){
        str=list->Strings[i].c_str();
        str.extract("name[*]");
        str.del("name[");
        str.del("]");
        if(!str[":"]){
                nam->Add(str.charstr());
                str=list->Strings[i].c_str();
                str.extract("ifindex[*]");
                str.del("ifindex[");
                str.del("]");
                ifi->Add(str.charstr());
        }
   }
   select("port","ip='"+ip+"'");
   for(int i=0; i<COUNTL; i++){
        str=get_value(i,"name").c_str();
        if(!str[":"]){
                dnam->Add(str.charstr());
                difi->Add(get_value(i,"ifindex"));
        }
   }
   for(int i=0; i<dnam->Count; i++){
        if(!inlist(dnam->Strings[i],difi->Strings[i],nam,ifi)){
                delete_db("port","ip='"+ip+"' AND ifindex='"+difi->Strings[i]+"' AND name='"+dnam->Strings[i]+"'");
        }
   }
   for(int i=0; i<nam->Count; i++){
        if(!inlist(nam->Strings[i],ifi->Strings[i],dnam,difi)){
                clear();
                add("ip",ip);
                add("ifindex",ifi->Strings[i]);
                add("name",nam->Strings[i]);
                insert("port");
        }
   }
   nam->Clear();              //для ONU
   ifi->Clear();
   dnam->Clear();
   difi->Clear();
   for(int i=0; i<list->Count; i++){
        str=list->Strings[i].c_str();
        str.extract("name[*]");
        str.del("name[");
        str.del("]");
        if(str[":"]){
                nam->Add(str.charstr());
                str=list->Strings[i].c_str();
                str.extract("ifindex[*]");
                str.del("ifindex[");
                str.del("]");
                ifi->Add(str.charstr());
        }
   }
   select("onu","ip='"+ip+"'");
   for(int i=0; i<COUNTL; i++){
        str=get_value(i,"name").c_str();
        if(str[":"]){
                dnam->Add(str.charstr());
                difi->Add(get_value(i,"ifindex"));
        }
   }
   for(int i=0; i<dnam->Count; i++){
        if(!inlist(dnam->Strings[i],difi->Strings[i],nam,ifi)){
                delete_db("onu","ip='"+ip+"' AND ifindex='"+difi->Strings[i]+"' AND name='"+dnam->Strings[i]+"'");
        }
   }
   for(int i=0; i<nam->Count; i++){
        if(!inlist(nam->Strings[i],ifi->Strings[i],dnam,difi)){
                clear();
                add("ip",ip);
                add("ifindex",ifi->Strings[i]);
                add("name",nam->Strings[i]);
                insert("onu");
        }
   }
}

bool PORT_from_db(AnsiString ip,TListView *l){
    select("port","ip='"+ip+"'");
    if(COUNTL>0){
       if(get_value(0,"registered")!=""){
                l->Clear();
           for(int i=0; i<COUNTL; i++){
                TListItem *li=l->Items->Add();
                li->Caption=get_value(i,"name");
                li->SubItems->Add(get_value(i,"online_offline"));
                li->SubItems->Add(get_value(i,"registered"));
                li->SubItems->Add(get_value(i,"temp"));
           }
       return true;
       }
    }
    return false;
        
}

void PORT_to_db(AnsiString ip, TListView *l){
        for(int i=0; i<l->Items->Count; i++){
                select("port","ip='"+ip+"' AND name='"+l->Items->Item[i]->Caption+"'");
                if(COUNTL==0){
                        clear();
                        add("ip",ip);
                        add("name",l->Items->Item[i]->Caption);
                        add("online_offline",l->Items->Item[i]->SubItems->Strings[0]);
                        add("registered",l->Items->Item[i]->SubItems->Strings[1]);
                        add("temp",l->Items->Item[i]->SubItems->Strings[2]);
                        add("datetime",DateTimeToStr(Now()));
                        add("ifindex",__getifindex(l->Items->Item[i]->Caption));
                        insert("port");
                }else{
                        clear();
                        add("online_offline",l->Items->Item[i]->SubItems->Strings[0]);
                        add("registered",l->Items->Item[i]->SubItems->Strings[1]);
                        try{add("temp",l->Items->Item[i]->SubItems->Strings[2]);}catch(...){};
                        add("datetime",DateTimeToStr(Now()));
                        update("port","ip='"+ip+"' AND name='"+l->Items->Item[i]->Caption+"'");
                }
        }

}

void ONU_from_db(AnsiString ip, TListItem *l){
        AnsiString s=l->Caption;
        select("onu","ip='"+ip+"' AND name='"+s+"'");
        if(COUNTL>0){
                for(int i=0; i<COUNTC-4; i++){
                      l->SubItems->Strings[i]=get_value(0,i+1);
                }
        }
}

void ONU_to_db(AnsiString ip, TListItem *l){
   clear();
   if(l->SubItems->Strings[0]!="") add("tx",l->SubItems->Strings[0]);
   if(l->SubItems->Strings[1]!="") add("rx",l->SubItems->Strings[1]);
   if(l->SubItems->Strings[2]!="") add("distance",l->SubItems->Strings[2]);
   if(l->SubItems->Strings[3]!="") add("time",l->SubItems->Strings[3]);
   if(l->SubItems->Strings[4]!="") add("vendor",l->SubItems->Strings[4]);
   if(l->SubItems->Strings[5]!="") add("model",l->SubItems->Strings[5]);
   if(l->SubItems->Strings[6]!="") add("vlan",l->SubItems->Strings[6]);
   if(l->SubItems->Strings[7]!="") add("mac",l->SubItems->Strings[7]);
   if(l->SubItems->Strings[8]!="") add("version",l->SubItems->Strings[8]);
   if(l->SubItems->Strings[9]!="") add("status",l->SubItems->Strings[9]);
   add("datetime",DateTimeToStr(Now()));
   update("onu","ip='"+ip+"' AND name='"+l->Caption+"'");
}

void ONU_to_db(AnsiString ip, AnsiString name, AnsiString key, AnsiString value){
   clear();
   if(value!="") add(key,value);
   add("datetime",DateTimeToStr(Now()));
   update("onu","ip='"+ip+"' AND name='"+name+"'");
}


bool add_script(AnsiString name, AnsiString type, AnsiString cod, AnsiString mask){
        select("user_script","name='"+name+"'");
        if(COUNTL>0){
                ShowMessage("Скрипт з таким ім'ям вже є в базі");
                return false;
        }
        Tmstr str(1024);
        str=cod.c_str();
        str.delall("\r");
        str.replaceall("\n","|");
        clear();
        add("name",name);
        add("type",type);
        add("cod",str.charstr());
        add("mask",mask);
        insert("user_script");
        return true;
}

void update_script(AnsiString name, AnsiString type, AnsiString cod, AnsiString mask){
        Tmstr str(1024);
        str=cod.c_str();
        str.delall("\r");
        str.replaceall("\n","|");
        clear();
        add("name",name);
        add("type",type);
        add("cod",str.charstr());
        add("mask",mask);
        update("user_script","name='"+name+"'");
}

void delete_script(AnsiString name){
        delete_db("user_script","name='"+name+"'");
}

AnsiString get_script_cod(AnsiString name){
   select("user_script","name='"+name+"'");
   if(COUNTL>0){
        Tmstr str(1024);
        str=get_value(0,"cod").c_str();
        str.replaceall("|","\n");
        AnsiString r=str.charstr();
        return r;
   }else return "";
}

void read_scripts(TListView *l){
 select("user_script","");
 l->Clear();
 for(int i=0; i<COUNTL; i++){
        l->Items->Add()->Caption=get_value(i,"name");
 }



}

void deleteONU(AnsiString ip, AnsiString name){
        delete_db(name,"ip='"+ip+"'");
 }
