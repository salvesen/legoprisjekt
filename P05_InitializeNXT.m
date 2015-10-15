% Initialiserer NXT'en med sensorer og motorer.
% Initialiserer joysticken.

if online
    % Initialiser NXT
    COM_CloseNXT('all')
    clear joymex2
    handle = COM_OpenNXT();
    COM_SetDefaultNXT(handle);
    
    % Initialiser sensorer (legg til etterhvert)
    %OpenLight(SENSOR_3,'ACTIVE');
    OpenUltrasonic(SENSOR_4);
    % Initialiser motorer (legg til etterhvert)
    motorA = NXTMotor('A');
        
    % Initialiser joystick
    joymex2('open',0);
    joystick      = joymex2('query',0);
    JoyMainSwitch = joystick.buttons(1);
end
