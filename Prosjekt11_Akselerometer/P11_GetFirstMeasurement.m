% Får tak i første måling fra NXT med tilhørende tidspunkt.

if online
    k=1;                         % Diskret tellevariabel    
    Lys(k)=GetLight(SENSOR_3);   % Få tak i første måling 
                    
    k=1;                         % Diskret tellevariabel    
    Tilt(:,k) = GetAbsoluteIMU_Tilt(SENSOR_1);      % Hent første måling
    Acceleration(:,k) = GetAbsoluteIMU_Acc(SENSOR_1); % Hent første måling
    Tid(k)=0; % første tidspunkt er t=0
    tic
    
else
    load(filename)     % Laster datafil dersom online=0
    online=0;          % Dersom filename.mat inneholdt online=1
    k=1;               % Dersom filename.mat inneholdt f.eks. k=1521
    JoyMainSwitch=0;   % For å kunne kjøre samme kode som når online=1 
end

nullpunkt = Tilt(1,1,1);    % kode som er felles for online=0=1



