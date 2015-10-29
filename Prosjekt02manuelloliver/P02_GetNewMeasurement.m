
% Leser inn nye data fra joystick og fra sensorer på NXT

k=k+1;                                       %Increase counter
if online
    joystick        = joymex2('query',0);    %Variable for query 
    JoyMainSwitch   = joystick.buttons(1);   %Asks joystick about status on stopbutton
%     JoyForover(k)   = -joystick.axes(2)/327.68; %Ask joystick of front/back values 32768 front, -32768back
%     JoySide(k)      =-joystick.axes(1)/327.68;  %Ask joystick of side values 32768 left, -32768right?
    JoyForover(k)   = -joystick.axes(2)/1500; %Ask joystick of front/back values 32768 front, -32768back
    %JoyForover(k)*1500
    JoySide(k)      =-joystick.axes(1)/1500;  %Ask joystick of side values 32768 left, -32768right?
    JoySide(k)*1500
    Lys(k) = GetLight(SENSOR_3);             %New light mesurment is made
    Tid(k) = toc;                            %Takes a time stamp
else
    if k==numel(Lys)                         %Checks when we run out of light mesurments in data file
        JoyMainSwitch=1;                     %Simulates that joystick is pressed
    end
end
