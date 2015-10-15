% Får tak i første måling fra NXT med tilhørende tidspunkt.

if online==1
    i=0:10:360                         % Diskret tellevariabel    
    x(i)=GetUltrasonic(SENSOR_4;   % Få tak i første måling 
    y = x(i)*tand(10)               % første y når x(i)
else
    load(filename)     % Laster datafil dersom online=0
    online=0;          % Dersom filename.mat inneholdt online=1
    k=1;               % Dersom filename.mat inneholdt f.eks. k=1521
    JoyMainSwitch=0;   % For å kunne kjøre samme kode som når online=1 
end

%%nullpunkt = Lys(1);    % kode som er felles for online=0=1

% Initialiser figurer
set(0,'DefaultFigureUnits','normalized')
figure('Position',[0.01 0.01 0.9 0.9]);

