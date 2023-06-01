#define _telnet Form1->IdTelnet1
extern bool _asksave(AnsiString &s);
class Ttelnet{
AnsiString stin;
void (*CalbackShowProgress)(int a);
int _time;
int _timeout;
bool readbool;
public:
AnsiString sMAC;
AnsiString sVENDOR;
AnsiString sMODEL;
AnsiString sVERSION;
AnsiString oltname;
AnsiString oltip;
AnsiString oltmodel;
	Ttelnet(){
       CalbackShowProgress=0;
       readbool=false;
	}
	~Ttelnet(){
		try{
		//_telnet->Disconnect();
		}
		catch(...){
        }
	}
private:
	bool Connect(AnsiString ip){
		try{
		_telnet->Connect(ip);
		oltip=ip;
		if (_telnet->Connected()) {
			SendString("");
			return true;
		}
		}
		catch(...){
		}
		return false;
	}

	void SendString(AnsiString value){
	stin="";
	value+='\n';
	for (int i = 1; i <= value.Length(); i++) {
		_telnet->SendCh(value[i]);
	}
	}
	AnsiString ReadString(AnsiString param,long timeout){
	return ReadString(param,'\b','\b',timeout);
	}
	AnsiString ReadString(AnsiString param1,AnsiString param2,long timeout){
	return ReadString(param1,param2,'\b',timeout);
	}
	AnsiString ReadString(AnsiString param1,AnsiString param2,AnsiString param3,long timeout){
        readbool=true;
	Tmstr s(MBYF);
	Tmstr s1(MBYF/10);
	Tmstr s2(MBYF/10);
	_timeout=timeout;
	_time=getTime()+_timeout;
	while((!(s1[param1.c_str()]))&&(!(s1[param2.c_str()]))&&(!(s1[param3.c_str()]))&&(_time>getTime())){
		if(s1["More"]){
			s1.del("More");
			SendString("");
		}
		if(CalbackShowProgress!=0) CalbackShowProgress(1);
		Application->ProcessMessages();
                Application->ProcessMessages();
		s1.add(stin.c_str());
		stin="";
		if(s1.length()>100){
			int pos=s1.length()/2;
			s2=s1;
			s2.delfrompos(pos);
			s.add(s2);
			s2=s1;
			s2.deltopos(pos);
			s1=s2;
		}
	}
	s.add(s1);
        readbool=false;
	return s.charstr();
	}


    bool Logon(AnsiString user, AnsiString pass){
		if(!_telnet->Connected()) return false;
		Tmstr s(MBYF);
		AnsiString t;
		for(int i=0; i<3; i++){
			SendString(user+"\n"+pass+"\n"+"enable\n"+"terminal length 512\n"+"terminal width 255");
			SendString("");
			t=ReadString("#","Authentication failed!",TOUT);
			SendString("");
			s=t.c_str();
			if(s["#"]){
				Tmstr temp(s);
				s.extractminimal("\n*>");
				s.del("\n");
				s.del(">");
				oltname=s.charstr();
				s=temp;
				s.extractminimal("Welcome*\n");
				s.del("Welcome to ");
				s.extract("* * ");
				oltmodel=s.charstr();
				//ShowInfo();
				return true;
			}
		}
		return false;
	}
public:
        void Add(AnsiString str){
           if(readbool){
		stin=stin+str;
		_time=getTime()+_timeout;
           }else{
           stin="";
           }
	}
        void SetCalback(void (*f)(int a)){
		CalbackShowProgress=f;
	}
	AnsiString ShowRunInterface(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon){
                if(readbool) return "";
                Connect(ip);
                Logon(user,pass);
		SendString("show run interface "+epon+"\nexit");
		Tmstr s(MBYF);
		s=ReadString(">",TOUT).c_str();
		s.mdel("\n*\n");
		s.mdel((this->oltname+"*").c_str());
                Close();
		return s.charstr();
	}

        AnsiString onu_description(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon){
                if(readbool) return "";
                Connect(ip);
                Logon(user,pass);
		SendString("show run interface "+epon+"\nexit");
		Tmstr s(MBYF);
		s=ReadString(">",TOUT).c_str();
		s.mdel("\n*\n");
		s.mdel((this->oltname+"*").c_str());
                if(s["epon onu description"]){
                        s.extract("epon onu description *\n");
                        s.del("epon onu description ");
                        s.del("\n");
                }else{
                        s="";
                }
                Close();
		return s.charstr();
	}
	void GetInfo(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon){
                if(readbool) return;
                Connect(ip);
                Logon(user,pass);
		SendString("show epon interface "+epon+" onu ctc basic-info\nexit");
		Tmstr s(1024);
		s=ReadString(">",TOUT).c_str();
                Close();
		Tmstr temp(s);
		s.extractminimal("ONU ID*:*.*.*\n");
		s.mdel("ONU ID*: ");
		sMAC=s.charstr();
		s=temp;
		s.extractminimal("ONU Vender ID*:*\n");
		s.mdel("ONU Vender ID*: ");
		sVENDOR=s.charstr();
		s=temp;
		s.extractminimal("ONU MODEL ID*:*\n");
		s.mdel("ONU MODEL ID*: ");
		sMODEL=s.charstr();
		s=temp;
		s.extractminimal("Software Version*:*\n");
		s.mdel("Software Version*: ");
		sVERSION=s.charstr();
	}
	AnsiString LastDereg(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon){
                if(readbool) return "";
                Connect(ip);
                Logon(user,pass);
		Tmstr s(MBYF);
		s=epon.c_str();
		s.mdel(":*");
		AnsiString t = s.charstr();
		SendString("show epon active-onu Interface "+t+"\nexit");
		t =ReadString(">",TOUT);
                Close();
                s=t.c_str();
                if(s[(epon+" ").c_str()]){
		        s.extractminimal((epon+" *\n").c_str());
		        t=s.charstr();
                        return t;
                }else{
                  return LastDeregInactive(ip,user,pass,epon);
                }


	}
        AnsiString LastDeregInactive(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon){
                if(readbool) return "";
                Connect(ip);
                Logon(user,pass);
		Tmstr s(128);
		s=epon.c_str();
		s.mdel(":*");
		AnsiString t = s.charstr();
		SendString("show epon inactive-onu Interface "+t+"\nexit");
		t =ReadString(">",TOUT);
                Close();
		s.setsize(MBYF);
		s=t.c_str();
		s.extractminimal((epon+" *\n").c_str());
		t=s.charstr();
		return t;
	}
        AnsiString getEponFindMAC(AnsiString ip, AnsiString user, AnsiString pass, AnsiString mac){
                /*if(readbool) return "";
                Connect(ip);
                Logon(user,pass);
		SendString("show epon inactive-onu\nexit");
		AnsiString t =ReadString(">",TOUT);
                Close();
                Tmstr s(MBYF);
		s=t.c_str();
		s.extractminimal(("\n*"+mac+"*\n").c_str());
                if(!s[mac.c_str()]) return mac;
                s.delall("\n");
                s.extract(("*"+mac).c_str());
		t=s.charstr();
		return t;*/
                if(readbool) return "";
                Connect(ip);
                Logon(user,pass);
		SendString("show epon limit-onu-reg\nexit");
                AnsiString r=ReadString(">",TOUT);
                Tmstr temp(MBYF);
                temp=r.c_str();
                temp.extractminimal(("EPON*"+mac).c_str());
                temp.extract("*:");
                temp.del(":");
                r=temp.charstr();
                r+=" "+mac;
                //ShowMessage(r);
                Close();
                return r;
	}
	void Close(){
                if(CalbackShowProgress!=0) CalbackShowProgress(0);
                try{
		        SendString("exit");
                        _telnet->Disconnect();
                }catch(...){
                }
                if(CalbackShowProgress!=0) CalbackShowProgress(0);
	}

	AnsiString getOltVersion(AnsiString ip, AnsiString user, AnsiString pass){
                if(readbool) return "";
                Connect(ip);
                Logon(user,pass);
		SendString("show version\nexit");
		Tmstr s(MBYF);
		s=ReadString(">",TOUT).c_str();
                Close();
		s.mdel("\n*\n");
		s.mdel((this->oltname+"*").c_str());
		return s.charstr();
	}
	void cleanCLI(AnsiString st){
		SendString("terminal length 512");
		SendString("terminal width 255");
	}

	AnsiString getEPON(AnsiString ip, AnsiString user, AnsiString pass){
                if(readbool) return "";
		Tmstr temp(MBYF);
                Connect(ip);
                Logon(user,pass);
		AnsiString s,r;
		SendString("config");
		ReadString("#",TOUT);
		SendString("interface EPON0/8");
		temp=ReadString("#",TOUT).c_str();
		if(temp["invalid"]){
			for(int i=1;i<=4;i++){
				r+="EPON0/"+IntToStr(i)+"\n";
			}
		}else{
			for(int i=1;i<=8;i++){
				r+="EPON0/"+IntToStr(i)+"\n";
			}
			SendString("exit");
			ReadString("#",TOUT);
        }
		SendString("exit");
		Close();
		return r;
	}
	AnsiString getONU(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon){
                if(readbool) return "";
                Connect(ip);
                Logon(user,pass);
		SendString("show epon onu-information Interface "+epon+"\nexit");
                AnsiString s=ReadString(">",TOUT);
                Close();
		return s;
	}
        void writeAll(AnsiString ip, AnsiString user, AnsiString pass){
                if(readbool) return;
                Connect(ip);
                Logon(user,pass);
		SendString("write all\nexit");
                AnsiString s=ReadString(">",60*TOUT);
                Close();
	}
        void reboot(AnsiString ip, AnsiString user, AnsiString pass){
                if(readbool) return;
                Connect(ip);
                Logon(user,pass);
		SendString("reboot\ny");
                Sleep(1000);
                Close();
	}
        void onu_reboot(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon){
                if(readbool) return;
                Connect(ip);
                Logon(user,pass);
                AnsiString s;
                Tmstr temp(MBYF);
                temp=epon.c_str();
                temp.replace("EPON","");
                s=temp.charstr();
		SendString("epon reboot onu interface epon "+s+"\ny\nexit");
                ReadString(">",TOUT);
                Close();
	}
        void onu_look(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon, AnsiString mac){
                if(readbool) return;
                Connect(ip);
                Logon(user,pass);
                Tmstr temp(MBYF);
                temp=epon.c_str();
                temp.mdel(":*");
                AnsiString e=temp.charstr();
		SendString("config\ninterface "+e+"\nepon onu-blacklist mac "+mac+"\nexit\nexit\nexit");
                ReadString(">",TOUT);
                Close();
	}
        void onu_unlook(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon, AnsiString mac){
                if(readbool) return;
                Connect(ip);
                Logon(user,pass);
                Tmstr temp(MBYF);
                temp=epon.c_str();
                temp.mdel(":*");
                AnsiString e=temp.charstr();
		SendString("config\ninterface "+e+"\nno epon onu-blacklist mac "+mac+"\nexit\nexit\nexit");
                ReadString(">",TOUT);
                Close();
	}
        AnsiString onu_mactable(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon){
                if(readbool) return "";
                Connect(ip);
                Logon(user,pass);
		SendString("show epon interface "+epon+" onu mac address-table\nexit");
                AnsiString r=ReadString(">",TOUT);
                Tmstr temp(MBYF);
                temp=r.c_str();
                temp.mdel("*---\n");
                temp.mdel((this->oltname+"*").c_str());
                Close();
                return temp.charstr();
	}
        AnsiString blacklist(AnsiString ip, AnsiString user, AnsiString pass){
                if(readbool) return "";
                Connect(ip);
                Logon(user,pass);
		SendString("show epon limit-onu-reg\nexit");
                AnsiString r=ReadString(">",TOUT);
                TStringList *sl=new TStringList();
                sl->Text=r;
                r="";
                Tmstr temp(MBYF);
                for(int i=0;i<sl->Count;i++){
                  temp=sl->Strings[i].c_str();
                  if(temp.msearch("????.????.???? *")){
                   temp.extract("????.????.????");
                   r+=temp.charstr();
                   r+="\n";
                  }
                }
                Close();
                sl->Text=r;
                r="";
                for(int i=0;i<sl->Count;i++){
                  r+=this->getEponFindMAC(ip,user,pass,sl->Strings[i])+"\n";
                }
                return r;
	}
        void onu_deregister(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon){
                if(readbool) return;
                Connect(ip);
                Logon(user,pass);
                AnsiString s1;
                AnsiString s2;
                Tmstr temp(MBYF);
                temp=epon.c_str();
                temp.mdel(":*");
                s1=temp.charstr();
                temp=epon.c_str();
                temp.mdel("*:");
                s2=temp.charstr();
		SendString("config\ninterface "+s1+"\nno epon bind-onu sequence "+s2+"\nexit");
                ReadString(">",TOUT);
                Close();
	}
        void SetRunInterface(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon, AnsiString text){
                if(readbool) return;
                Connect(ip);
                Logon(user,pass);
                SendString("config\ninterface "+epon);
                SendString(text);
                SendString("exit\nexit\nexit");
                ReadString(">",TOUT);
                Close();
        }
        void SetDescription(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon, AnsiString text){
                if(readbool) return;
                Connect(ip);
                Logon(user,pass);
                SendString("config\ninterface "+epon);
                SendString("epon onu description "+text);
                SendString("exit\nexit\nexit");
                ReadString(">",TOUT);
                Close();
        }
        void UpdateONU(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon, AnsiString tftp, AnsiString file){
              if(readbool) return;
              Connect(ip);
              Logon(user,pass);
              SendString("dir");
              AnsiString r=ReadString("free space",TOUT);
              Tmstr temp(MBYF);
              temp=r.c_str();
              if(!temp[file.c_str()]){
                SendString("copy tftp flash "+tftp+"\n"+file+"\n");
                ReadString("TFTP:successfully",10*TOUT);
                ReadString("#",TOUT);
              }
              SendString("epon update onu image "+file+" interface "+epon+"\ny");
              ReadString("#",10*TOUT);
              if(_asksave(epon)) SendString("epon commit-onu-image-update interface "+epon);
              ReadString("#",10*TOUT);
              SendString("exit");
              ReadString(">",TOUT);
              Close();
        }

        void UpdateMenyONU(AnsiString ip, AnsiString user, AnsiString pass, AnsiString epon, AnsiString onus, AnsiString tftp, AnsiString file){
              if(readbool) return;
              Connect(ip);
              Logon(user,pass);
              SendString("copy tftp flash "+tftp+"\n"+file+"\n");
              ReadString("TFTP:successfully",10*TOUT);
              ReadString("#",TOUT);
              SendString("epon update onu image "+file+" interface "+epon+" "+onus+" \ny");
              ReadString("#",10*TOUT);
              if(_asksave(epon+" "+onus)) SendString("epon commit-onu-image-update interface "+epon+" "+onus);
              ReadString("#",10*TOUT);
              SendString("delete "+file+"\ny\nexit");
              ReadString(">",TOUT);
              Close();
        }
        void UpdateONUForOLTCopy(AnsiString ip, AnsiString user, AnsiString pass, AnsiString tftp, AnsiString file){
              if(readbool) return;
              Connect(ip);
              Logon(user,pass);
              SendString("dir");
              AnsiString r=ReadString("free space",TOUT);
              Tmstr temp(MBYF);
              temp=r.c_str();
              if(!temp[file.c_str()]){
                SendString("copy tftp flash "+tftp+"\n"+file+"\n");
                ReadString("TFTP:successfully",10*TOUT);
                ReadString("#",TOUT);
              }

        }
        void UpdateONUForOLTUpdate(AnsiString epon, AnsiString onus, AnsiString file){
              SendString("epon update onu image "+file+" interface "+epon+" "+onus+" \ny");
              ReadString("#",10*TOUT);
              if(_asksave(epon+" "+onus)) SendString("epon commit-onu-image-update interface "+epon+" "+onus);
              ReadString("#",10*TOUT);
        }
        void UpdateONUForOLTClose(AnsiString file){
             SendString("exit");
             ReadString(">",TOUT);
             Close();
        }
        void DeleteFile(AnsiString ip, AnsiString user, AnsiString pass,AnsiString file){
            if(readbool) return;
              Connect(ip);
              Logon(user,pass);
             SendString("delete "+file+"\ny\nexit");
             ReadString(">",TOUT);
             Close();
        }

};