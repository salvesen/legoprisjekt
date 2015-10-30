% Leser inn nye data fra joystick og fra sensorer på NXT

k=k+1;   % øker diskret tellevariabel
if online
    joystick        = joymex2('query',0);    % spør etter data fra joystick
    JoyMainSwitch   = joystick.buttons(1);
    JoyForover(k)   = -joystick.axes(2)/327.68; % 32768 fremover, -32768 bakover
    JoySving(k)   = -joystick.axes(1)/327.68; % 32768 høyre, -32768 venstre
%     Lys(k) = GetLight(SENSOR_3);    % få tak i ny lysmåling              
    Tilt(:,k) = GetAbsoluteIMU_Tilt(SENSOR_1);        % Hent ny måling
    Acceleration(:,k) = GetAbsoluteIMU_Acc(SENSOR_1); % Hent ny måling
     Tid(k) = toc; 
    
else
    if k==numel(Lys)
        JoyMainSwitch=1; % simulerer at joystickbryter trykkes inn
    end
end
