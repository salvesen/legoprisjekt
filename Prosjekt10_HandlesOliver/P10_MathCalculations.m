

nullp(k) = nullpunkt;       %Updates zero variable used for plotting
nulll(k) = 0;               %Updates actual zero variable for plotting
LysFiltrert(k) = FIR_filter(Lys(1:k),m); %Calls FIR function for k
Ts(k-1) = Tid(k)-Tid(k-1);               %Calculates the time from last timestamp to current
avvik(k) = Lys(k)-nullpunkt;             %Calculates the deviation
LysIntegrert(k) = EulerForover(LysIntegrert(k-1),avvik(k-1),Ts(k-1)); %Calls Euler function
LysFiltrertIIR(k) = IIRfilter(Lys(k),LysFiltrert(k-1));               %Calls IIR function
LysIntegrertT(k) = Trapes(LysIntegrert(k-1),avvik(k-1:k),Ts(k-1));    %Calls Trapes function
LysDerivert(k-1) = Derivasjon(LysFiltrert(k-1:k), Ts(k-1));           %Calls Derivasjon function


