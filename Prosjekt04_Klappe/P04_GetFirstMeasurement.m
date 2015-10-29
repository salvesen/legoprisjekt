% Får tak i første måling fra NXT med tilhørende tidspunkt.

if online
    k=1;                         % Diskret tellevariabel    
%     Lys(k)=GetLight(SENSOR_3); % Få tak i første måling 
    Lyd(k) = GetSound(SENSOR_2); %få tak i første måling
    tic;                  % første tidspunkt er t=0
    rettfrem_holdefunksjon= 0;  %holder verdiene fra sist, nå må Lydfiltrert øke 
    stopp_holdefunksjon= 0;         %for at verdiene skal endre seg.
    bakover_holdefunksjon= 0;
    rettfrem=0;
    bakover=0;
    stopp=0;
    
    
else
    load(filename)     % Laster datafil dersom online=0
    online=0;          % Dersom filename.mat inneholdt online=1
    k=1;               % Dersom filename.mat inneholdt f.eks. k=1521
    JoyMainSwitch=0;   % For å kunne kjøre samme kode som når online=1 
end

nullpunkt = Lyd(1);    % kode som er felles for online=0=1

% Initialiser figurer
set(0,'DefaultFigureUnits','normalized')
figure('Position',[0.01 0.01 0.9 0.9]);

