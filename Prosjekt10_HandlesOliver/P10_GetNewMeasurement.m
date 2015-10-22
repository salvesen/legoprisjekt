% Leser inn nye data fra joystick og fra sensorer på NXT

k=k+1;                                       %Increase counter
if online
    joystick        = joymex2('query',0);    %Variable for query 
    JoyMainSwitch   = joystick.buttons(1);   %Asks joystick about status on stopbutton

    Lys(k) = GetLight(SENSOR_3);             %New light mesurment is made
    Tid(k) = toc;                            %Takes a time stamp
else
    if k==numel(Lys)                         %Checks when we run out of light mesurments in data file
        JoyMainSwitch=1;                     %Simulates that joystick is pressed
    end
end
