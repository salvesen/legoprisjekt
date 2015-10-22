% Får tak i første måling fra NXT med tilhørende tidspunkt.

if online==1
    k=1;                            %Counter 
    Ts = 0;                         %Variable for timekeeping defined
%     avvik = 0;                      %Variable for deviation defined
%     LysIntegrert = 0;               %Variable for integration defined
%     LysIntegrertT = 0;              %Variable for integration(T) defined
    Lys(k)=GetLight(SENSOR_3);      %First light mesurment 
%     LysFiltrert = Lys(k);           %Light filtered set to light value
%     LysFiltrertIIR = Lys(k);        %Light filtrated(IIR) set to light value
%     LysDerivert = Lys(k);           %Light derivated set to light value
%     m = Samples;                    %Number of samples used in FIR filter
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

avvik = 0;                      %Variable for deviation defined
LysIntegrert = 0;               %Variable for integration defined
LysIntegrertT = 0;              %Variable for integration(T) defined
LysFiltrert = Lys(k);           %Light filtered set to light value
LysFiltrertIIR = Lys(k);        %Light filtrated(IIR) set to light value
LysDerivert = 0;           %Light derivated set to light value
m = Samples;                    %Number of samples used in FIR filter
nullpunkt = Lys(k);                 %Zero set to first light mesurment
nullp(k) = nullpunkt;               %Zero vektor defined


%Handles for plotting












% f2 = figure(2);  %Sets frame to 2
% %Sets position for frame
% set(f2,'Position',...
%     [(scrsz(3)/3 + ((scrsz(3)/3)/2)) scrsz(4)/3 scrsz(3)/3 scrsz(4)/3]);
% subplot(3,1,1)
% h = plot(Tid(1:k),Lys(1:k),Tid(1:k),LysFiltrert(1:k))   %plots light and filtrated

