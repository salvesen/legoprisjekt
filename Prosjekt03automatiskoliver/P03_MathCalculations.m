

nullp(k) = nullpunkt;       %Updates zero variable used for plotting
nulll(k) = 0;               %Updates actual zero variable for plotting
LysFiltrert(k) = FIR_filter(Lys(1:k),m); %Calls FIR function for k
Ts(k-1) = Tid(k)-Tid(k-1);               %Calculates the time from last timestamp to current
avvik(k) = Lys(k)-nullpunkt;             %Calculates the deviation
filtrertavvik(k) = LysFiltrert(k) - nullpunkt;
LysIntegrert(k) = EulerForover(LysIntegrert(k-1),avvik(k-1),Ts(k-1)); %Calls Euler function
LysFiltrertIIR(k) = IIRfilter(Lys(k),LysFiltrert(k-1));               %Calls IIR function
LysIntegrertT(k) = Trapes(LysIntegrert(k-1),avvik(k-1:k),Ts(k-1));    %Calls Trapes function
avvikderivert(k-1) = Derivasjon(avvik(k-1:k),Ts(k-1));
LysDerivert(k-1) = Derivasjon(LysFiltrert(k-1:k), Ts(k-1));           %Calls Derivasjon function


%reg(k) = PID(avvik(k),LysIntegrert(k),LysDerivert(k-1),P,I,D);
if LysIntegrert(k)*I < 60
    %reg(k) = round((avvik(k)*P + LysIntegrert(k)*I + avvikderivert(k-1)*D));
    reg(k) = PID(avvik(k),LysIntegrert(k),avvikderivert(k-1),P,I,D);
else
    %reg(k) = round((avvik(k)*P + 60 + avvikderivert(k-1)*D));
    reg(k) = PID(avvik(k),15,avvikderivert(k-1),P,1,D);
end