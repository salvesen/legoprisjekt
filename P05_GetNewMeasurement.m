% Leser inn nye data fra joystick og fra sensorer på NXT

i=i+11;   % øker diskret tellevariabel
if online
    joystick        = joymex2('query',0);    % spør etter data fra joystick
    JoyMainSwitch   = joystick.buttons(1);
    JoyForover(k)   = -joystick.axes(2)/327.68; % 32768 fremover, -32768 bakover
    
    x(i) = GetUltrasonic(SENSOR_4;    % få tak i ny måling
    y = x(i)*tand(10)                     

end
