
% Får tak i første måling fra NXT med tilhørende tidspunkt.

if online==1
    k=1;                            %Counter 
    Ts = 0;                         %Variable for timekeeping defined
    avvik = 0;                      %Variable for deviation defined
    LysIntegrert = 0;               %Variable for integration defined
    LysIntegrertT = 0;              %Variable for integration(T) defined
    Lys(k)=GetLight(SENSOR_3);      %First light mesurment 
    LysFiltrert = Lys(k);           %Light filtered set to light value
    LysFiltrertIIR = Lys(k);        %Light filtrated(IIR) set to light value
    LysDerivert = 0;           %Light derivated set to light value
    avvikderivert(k) = 0;
    m = Samples;                    %Number of samples used in FIR filter
    Tid(k) = 0;                     %First time stamp == 0
    tic;                            %Starts the timekeeping here
else
    load(filename)                  %Loads datafile
    online=0;                       %Incase datafile includes online == 1 
    m = Samples;                    %Incase datafile includes filter samples
    k=1;                            %Resets counter 
    JoyMainSwitch=0;                %Resets stop button
    LysFiltrertIIR = Lys(k);        %Light filtrated(IIR) set to light value
end

reg = zeros(1,2);
nullpunkt = Lys(k);                 %Zero set to first light mesurment
nullp(k) = nullpunkt;               %Zero vektor defined

