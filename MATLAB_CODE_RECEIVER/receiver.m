csv_data=readtable("DSO00007.CSV");
time=csv_data.Var1;
tx_data_cro=csv_data.Var2;
rx_data_cro=csv_data.Var3;
figure
plot(time,rx_data_cro)
xlabel("Time (Sec)")
ylabel("Voltage (V)")
title("Displayed receiver data on CRO")
l=length(rx_data_cro);
digital_data=0;
for i=1:1:l
    if(rx_data_cro(i)>0.5)
        digital_data(i)=1;
    else
        digital_data(i)=0;
    end
end
figure
plot(time,digital_data)
xlabel("Time (Sec)")
ylabel("Voltage (V)")
title("Digital receiver data")
for i=1:1:l
if(digital_data(i)==0 && digital_data(i+1)==1)
    posedge=i+1;
    break
end
end
k=1;
t=0;
rx_data_envelope=0;
j=0;
for j=posedge+32:42:l
 rx_data_envelope(k)=digital_data(j);
 t(k)=time(j);
 k=k+1;
end
figure
plot(t,rx_data_envelope)
xlabel("Time (Sec)")
ylabel("Voltage (V)")
title("Receiver data (decoded OOK)")
jump=15;
rx_data=0;
for pos=1:8
rx_data(pos)=~rx_data_envelope(jump);
jump=jump+10;
end
message=0;
for n=1:8
message=message+(rx_data(n)*(2^(n-1)));
end
decodedmessage=dec2hex(message)