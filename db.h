#include "sqlite3.h"

#define DBPATH "db.lite"


TStringList *listfordb;
TStringList *columfordb;

TStringList *lw,*cw,*lr,*cr;
int COUNTC,COUNTL;

void init(){
	lw=new TStringList();
	cw=new TStringList();
	lr=new TStringList();
	cr=new TStringList();
	columfordb=new TStringList();
    listfordb=new TStringList();
}

void deinit(){
	lw->Free();
	cw->Free();
	lr->Free();
	cr->Free();
}

int call(void* t, int count, char** value, char** colum){
	for(int i=0; i<count; i++){
	   columfordb->Add(colum[i]);
	   listfordb->Add(value[i]);
	}
    return 0;
 }


sqlite3 *db = 0; // хэндл объекта соединение к БД
char *err = 0;



void open_db(){
AnsiString p=ExtractFilePath(Application->ExeName)+DBPATH;
sqlite3_open(p.c_str(), &db);
}

/*
void open_db(){
randname=IntToStr(random(1000000));
try{
	mi:
	while(!FileExists(PathToDb+DBPATH)){
	Sleep(100);
	Application->ProcessMessages();
	}
	RenameFile(PathToDb+DBPATH,PathToDb+randname);
	if(!FileExists(PathToDb+randname)) goto mi;
   if(sqlite3_open((PathToDb+randname).t_str(), &db)){
		ShowMessage("Помилка підключення до бази");
   }
   //sqlite3_open((PathToDb+DBPATH).t_str(), &db);
}catch(...){
   RenameFile(PathToDb+randname,PathToDb+DBPATH);
}
} */

void close_db(){
   sqlite3_close(db);
   //RenameFile(PathToDb+randname,PathToDb+DBPATH);
}

void clean_lists_db(){
	listfordb->Clear();
	columfordb->Clear();
}

void sql_db(String sql){
   sqlite3_exec(db, sql.c_str(), call, 0, &err);
}

void create_table_db(String name){
	String s="CREATE TABLE IF NOT EXISTS "+name+"(";
	bool k=false;
	for(int i = 0; i<columfordb->Count; i++){
		if(k){
			s+=",";
			s+=columfordb->Strings[i];
			s+=" TEXT";
		}else{
			s+=columfordb->Strings[i];
			s+=" TEXT";
			k=true;
		}
	}
	s+=");";
	open_db();
	sql_db(s);
	close_db();
}

void insert_db(String name){
	String s="INSERT INTO "+name+"(";
	bool k=false;
	for(int i = 0; i<columfordb->Count; i++){
		if(k){
			s+=",";
			s+="'";
			s+=columfordb->Strings[i];
			s+="'";
		}else{
			s+="'";
			s+=columfordb->Strings[i];
			s+="'";
			k=true;
		}
	}
	s+=") VALUES(";
	k=false;
	for(int i = 0; i<listfordb->Count; i++){
		if(k){
			s+=",";
			s+="'";
			s+=listfordb->Strings[i];
			s+="'";
		}else{
			s+="'";
			s+=listfordb->Strings[i];
			s+="'";
			k=true;
		}
	}
	s+=");";
	open_db();
	sql_db(s);
	close_db();
}

void update_db(String name, String where){
	open_db();
	for(int i=0; i<columfordb->Count; i++){
		String s="UPDATE "+name+" SET ";
		s+="'"+columfordb->Strings[i]+"'"+"='"+listfordb->Strings[i]+"'";
		s+=" WHERE "+where+";";
		//ShowMessage(s);
		sql_db(s);
	}
	close_db();
}

void update(String tablename, String where){
   clean_lists_db();
	for(int i=0; i<cw->Count; i++){
		columfordb->Add(cw->Strings[i]);
		listfordb->Add(lw->Strings[i]);
	}
	update_db(tablename,where);
}

void delete_db(String name, String where){
	String s="DELETE FROM "+name+" WHERE "+where+";";
	open_db();
	sql_db(s);
	close_db();
}


void select_db(String name, String where){
	open_db();
	String s;
	if(where==""){
		s="SELECT * FROM "+name+";";
	}else{
		s="SELECT * FROM "+name+" WHERE "+where+";";
	}
	clean_lists_db();
	sql_db(s);
	close_db();
}


int count_colums(){
        if(cr->Count==0) return 0;
	String s=cr->Strings[0];
   for(int i=1; i<cr->Count; i++){
		if(cr->Strings[i]==s){
			return i;
		}
   }
   return cr->Count;
}

int count_lines(){
   int j=COUNTC;
   if(j==0) return 0;
   return cr->Count/j;
}

void select(String name, String where){
	select_db(name, where);
	cr->Text=columfordb->Text;
	lr->Text=listfordb->Text;
	COUNTC=count_colums();
	COUNTL=count_lines();
}

void create_table(String name){
   columfordb->Clear();
   columfordb->Text=cw->Text;
   create_table_db(name);
}

void insert(String tablename){
	clean_lists_db();
	for(int i=0; i<cw->Count; i++){
		columfordb->Add(cw->Strings[i]);
		listfordb->Add(lw->Strings[i]);
	}
	insert_db(tablename);
}

String get_key(int index){
	return cr->Strings[index];
}
int get_index(String key){
	for(int i=0; i<COUNTC; i++){
		if(cr->Strings[i]==key) return i;
	}
	return -1;
}

String get_value(int lines, int key){
        if(COUNTC==0) return "";
	int index=lines*COUNTC+key;
	return lr->Strings[index];
}

String get_value(int lines, String key){
	return get_value(lines,get_index(key));
}

void clear(){
	lw->Clear();
	cw->Clear();
}

bool find_key_in_cw(String key){
	for(int i=0; i<cw->Count; i++){
		if(cw->Strings[i]==key){
			return true;
		}
	}
	return false;
}

void add(String key, String value){
   if(!find_key_in_cw(key)){
           Tmstr st(1024);
           st=value.c_str();
           st.delall("\r");
           st.delall("\n");
	   cw->Add(key);
	   lw->Add(st.charstr());
   }
}
void add(String key){
   if(!find_key_in_cw(key)){
	   cw->Add(key);
	   lw->Add("");
   }
}
void edit(String key, String value){
   for(int i=0; i<cw->Count; i++){
		if(cw->Strings[i]==key){
			lw->Strings[i]=value;
			break;
		}
   }
}
