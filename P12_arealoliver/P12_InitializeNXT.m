% Initialiserer NXT'en med sensorer og motorer.
% Initialiserer joysticken.

if online
    % Initialiser NXT
    COM_CloseNXT('all')
    clear joymex2
    handle = COM_OpenNXT();
    COM_SetDefaultNXT(handle);
    
    % Initialiser sensorer (legg til etterhvert)
    OpenUltrasonic(SENSOR_4,'ACTIVE');
    
    % Initialiser motorer (legg til etterhvert)
    
    motorB = NXTMotor('B','SmoothStart',true);
    motorC = NXTMotor('C','SmoothStart',true); 
        
    % Initialiser joystick
    joymex2('open',0);
    joystick      = joymex2('query',0);
    JoyMainSwitch = joystick.buttons(1);
end

