#define _snmp Form1->IdSNMP1
#define SNMPMACROS if(esnmp){\
	return "";}\
	AnsiString value;\
	esnmp=true;
#define SNMPMACROS2 if(esnmp){\
	return 0;}\
	AnsiString value;\
	esnmp=true; 
#define SNMPMACROSEND1  }catch(...){}\
        esnmp=false;\
	return value;

int TIMEOUT=10;
class Tsnmp{
void (*CalbackShowProgress)(int a);
bool esnmp;
AnsiString TtoStr(int a){
        if(a<10){
                return "0"+IntToStr(a);
        }
        else{
                return IntToStr(a);
        }
}

public:
	Tsnmp(){
		esnmp=false;
	}
        void SetCalback(void (*f)(int a)){
		CalbackShowProgress=f;
	}
        AnsiString vendor(AnsiString ip, AnsiString comuniti){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.9.225.1.6.0",comuniti,ip,value);
           SNMPMACROSEND1
        }
        AnsiString model(AnsiString ip, AnsiString comuniti){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.9.225.1.3.0",comuniti,ip,value);
           SNMPMACROSEND1
        }

        AnsiString firmware(AnsiString ip, AnsiString comuniti){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.3.6.10.1.6.1",comuniti,ip,value);
           SNMPMACROSEND1
        }
        AnsiString hardware(AnsiString ip, AnsiString comuniti){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.9.225.1.7.0",comuniti,ip,value);
           SNMPMACROSEND1
        }
        AnsiString temperature(AnsiString ip, AnsiString comuniti){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.9.181.1.1.7.1",comuniti,ip,value);
           SNMPMACROSEND1
        }
        
        AnsiString cpu_usage(AnsiString ip, AnsiString comuniti){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.9.48.1.0",comuniti,ip,value);
           SNMPMACROSEND1
        }

        AnsiString epon_mac(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.10.1.1.3."+ifindex,comuniti,ip,value);
           Tmstr t(MBYF);
           Tmstr t2(MBYF);
           Tmstr t3(MBYF);
           try{
           t=value.c_str();
           for(int i=1; i<value.Length()+1; i++){
            int b=0;
            if((int)value[i]<0) b=256+(int)value[i];
            else b=(int)value[i];
            t2.toHex(b,2);
            t2.revers();
            t3+=t2;
           }
           t3.insert(8,".");
           t3.insert(4,".");
           }catch(...){}
           esnmp=false;
           return t3.charstr();
        }
        AnsiString epon_vendor(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.10.1.1.1."+ifindex,comuniti,ip,value);
           SNMPMACROSEND1
        }
        AnsiString epon_status(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.108.1.2."+ifindex,comuniti,ip,value);
           SNMPMACROSEND1
        }
        AnsiString epon_model(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.10.1.1.85."+ifindex,comuniti,ip,value);
           SNMPMACROSEND1
        }
        AnsiString epon_vlan(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.12.1.1.3."+ifindex+".1",comuniti,ip,value);
           SNMPMACROSEND1
        }

        AnsiString epon_software(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.10.1.1.5."+ifindex,comuniti,ip,value);
           SNMPMACROSEND1
        }
        
        AnsiString epon_tx(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.10.5.1.5."+ifindex,comuniti,ip,value);
           Tmstr temp(MBYF);
           temp=value.c_str();
           int n=temp.length();
           temp.insert(n-1,".");
           value=temp.charstr();
           SNMPMACROSEND1
        }
        AnsiString epon_rx(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.108.1.3."+ifindex,comuniti,ip,value);
           Tmstr temp(MBYF);
           temp=value.c_str();
           int n=temp.length();
           temp.insert(n-1,".");
           value=temp.charstr();
           SNMPMACROSEND1
        }
        AnsiString epon_distance(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.10.1.1.27."+ifindex,comuniti,ip,value);
           SNMPMACROSEND1
        }
        AnsiString epon_online(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.6.1.1.21."+ifindex,comuniti,ip,value);
           SNMPMACROSEND1
        }

        AnsiString epon_registered(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.6.1.1.2."+ifindex,comuniti,ip,value);
           SNMPMACROSEND1
        }
        AnsiString olt_name(AnsiString ip, AnsiString comuniti){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.2.1.1.5.0",comuniti,ip,value);
           SNMPMACROSEND1
        }
        AnsiString epon_temper(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.107.1.6."+ifindex,comuniti,ip,value);
           int a=StrToInt(value);
           value=IntToStr(a/256);
           SNMPMACROSEND1
        }
        AnsiString epon_txpower(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.107.1.3."+ifindex,comuniti,ip,value);
           float a=StrToFloat(value);
           value=FloatToStr(a/10);
           SNMPMACROSEND1
        }
        AnsiString epon_voltage(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.107.1.7."+ifindex,comuniti,ip,value);
           int a=StrToInt(value);
           value=FloatToStr(a/0.0001);
           SNMPMACROSEND1
        }

        AnsiString epon_uptime(AnsiString ip, AnsiString comuniti, AnsiString ifindex){
           SNMPMACROS
           try{
           _snmp->QuickSend("1.3.6.1.4.1.3320.101.10.1.1.80."+ifindex,comuniti,ip,value);
           long t=StrToInt(value);
           long s=0;
           long m=0;
           long h=0;
           long d=0;
           s=t;
           m=s/60;
           s=s%60;
           h=m/60;
           m=m%60;
           d=h/24;
           h=h%24;
           value=IntToStr(d)+" �  "+TtoStr(h)+":"+TtoStr(m)+":"+TtoStr(s);
           SNMPMACROSEND1
        }
        AnsiString epon_name(AnsiString ip, AnsiString comuniti){
           SNMPMACROS
           try{
           AnsiString OID="1.3.6.1.4.1.3320.9.64.4.1.1.2";
           _snmp->Active = true;
            Tmstr temp(MBYF);
           _snmp->Query->Clear();
           _snmp->Query->Host = ip;
           _snmp->Query->Port = 161;
           _snmp->Query->Community = comuniti;
           _snmp->BroadcastEnabled=false;
           _snmp->Query->MIBAdd(OID, "", ASN1_INT);
           _snmp->Query->PDUType = PDUGetNextRequest;
           int er=0;
 
        if (_snmp->SendQuery()) {
          while(true){
          if(CalbackShowProgress!=0) CalbackShowProgress(2);
           for(int i=0; i<_snmp->Reply->ValueCount; i++){
                temp=_snmp->Reply->Value[i].c_str();
                if(temp["EPON"]){
                 temp=_snmp->Reply->ValueOID[i].c_str();
                 temp.del(OID.c_str());
                 temp.del(".");
                 value +="name["+_snmp->Reply->Value[i]+"] ifindex["+temp.charstr()+"]\n";
                }
                temp=_snmp->Reply->ValueOID[i].c_str();
           }
             if(temp[OID.c_str()]==false) break;
             else {
                _snmp->Query->MIBOID->Text=temp.charstr();
                try{
                _snmp->SendQuery();
                er=0;
                }catch(...){
                if(er>3){
                        if(CalbackShowProgress!=0) CalbackShowProgress(0);
                        _snmp->Active = false;
                        try{_snmp->Disconnect();}catch(...){};
                        esnmp=false;
	                return value;
                }
                er++;
                }
             }
             Sleep(TIMEOUT);
           }
           if(CalbackShowProgress!=0) CalbackShowProgress(0);

        }
           _snmp->Active = false;
           _snmp->Disconnect();

           SNMPMACROSEND1
        }

        int online_onu(AnsiString ip, AnsiString comuniti){
           SNMPMACROS2
           int r=0;
           try{
           AnsiString OID="1.3.6.1.4.1.3320.101.6.1.1.21";
           _snmp->Active = true;
            Tmstr temp(MBYF);
           _snmp->Query->Clear();
           _snmp->Query->Host = ip;
           _snmp->Query->Port = 161;
           _snmp->Query->Community = comuniti;
           _snmp->BroadcastEnabled=false;
           _snmp->Query->MIBAdd(OID, "", ASN1_INT);
           _snmp->Query->PDUType = PDUGetNextRequest;

        if (_snmp->SendQuery()) {
          while(true){
          if(CalbackShowProgress!=0) CalbackShowProgress(2);
           for(int i=0; i<_snmp->Reply->ValueCount; i++){
                temp=_snmp->Reply->ValueOID[i].c_str();
                if(temp[OID.c_str()]==false) break;
                temp=_snmp->Reply->Value[i].c_str();
                try{
                   r+=temp.integer();
                }catch(...){
                  break;
                }
                temp=_snmp->Reply->ValueOID[i].c_str();
           }
             if(temp[OID.c_str()]==false) break;
             else {
                _snmp->Query->MIBOID->Text=temp.charstr();
                try{
                _snmp->SendQuery();
                }catch(...){
                if(CalbackShowProgress!=0) CalbackShowProgress(0);
                _snmp->Active = false;
                try{_snmp->Disconnect();}catch(...){};
                return r;
                }
             }
             Sleep(TIMEOUT);
           }
           if(CalbackShowProgress!=0) CalbackShowProgress(0);

        }
           _snmp->Active = false;
           _snmp->Disconnect();
           }catch(...){}
		   esnmp=false;

           return r;
        }
        int offline_onu(AnsiString ip, AnsiString comuniti){
           SNMPMACROS2
           int r=0;
           try{
           AnsiString OID="1.3.6.1.4.1.3320.101.6.1.1.22";
           _snmp->Active = true;
            Tmstr temp(MBYF);
           _snmp->Query->Clear();
           _snmp->Query->Host = ip;
           _snmp->Query->Port = 161;
           _snmp->Query->Community = comuniti;
           _snmp->BroadcastEnabled=false;
           _snmp->Query->MIBAdd(OID, "", ASN1_INT);
           _snmp->Query->PDUType = PDUGetNextRequest;

        if (_snmp->SendQuery()) {
          while(true){
          if(CalbackShowProgress!=0) CalbackShowProgress(2);
           for(int i=0; i<_snmp->Reply->ValueCount; i++){
                temp=_snmp->Reply->ValueOID[i].c_str();
                if(temp[OID.c_str()]==false) break;
                temp=_snmp->Reply->Value[i].c_str();
                try{
                   r+=temp.integer();
                }catch(...){
                  break;
                }
                temp=_snmp->Reply->ValueOID[i].c_str();
           }
             if(temp[OID.c_str()]==false) break;
             else {
                _snmp->Query->MIBOID->Text=temp.charstr();
                try{
                _snmp->SendQuery();
                }catch(...){
                if(CalbackShowProgress!=0) CalbackShowProgress(0);
                _snmp->Active = false;
                try{_snmp->Disconnect();}catch(...){};
                return r;
                }
             }
             Sleep(TIMEOUT);
           }
           if(CalbackShowProgress!=0) CalbackShowProgress(0);

        }
           _snmp->Active = false;
           _snmp->Disconnect();
           }catch(...){}
		   esnmp=false;
           return r;
        }
        

        int registered_onu(AnsiString ip, AnsiString comuniti){
           SNMPMACROS2
           int r=0;
           try{
           AnsiString OID="1.3.6.1.4.1.3320.101.6.1.1.2";
           _snmp->Active = true;
            Tmstr temp(MBYF);
           _snmp->Query->Clear();
           _snmp->Query->Host = ip;
           _snmp->Query->Port = 161;
           _snmp->Query->Community = comuniti;
           _snmp->BroadcastEnabled=false;
           _snmp->Query->MIBAdd(OID, "", ASN1_INT);
           _snmp->Query->PDUType = PDUGetNextRequest;

        if (_snmp->SendQuery()) {
          while(true){
          if(CalbackShowProgress!=0) CalbackShowProgress(2);
           for(int i=0; i<_snmp->Reply->ValueCount; i++){
                temp=_snmp->Reply->ValueOID[i].c_str();
                if(temp[OID.c_str()]==false) break;
                temp=_snmp->Reply->Value[i].c_str();
                try{
                   r+=temp.integer();
                }catch(...){
                  break;
                }
                temp=_snmp->Reply->ValueOID[i].c_str();
           }
             if(temp[OID.c_str()]==false) break;
             else {
                _snmp->Query->MIBOID->Text=temp.charstr();
                try{
                _snmp->SendQuery();
                }catch(...){
                if(CalbackShowProgress!=0) CalbackShowProgress(0);
                _snmp->Active = false;
                try{_snmp->Disconnect();}catch(...){};
                return r;
                }
             }
             Sleep(TIMEOUT);
           }
           if(CalbackShowProgress!=0) CalbackShowProgress(0);

        }
           _snmp->Active = false;
           _snmp->Disconnect();
           }catch(...){}
		   esnmp=false;
           return r;
        }

};
