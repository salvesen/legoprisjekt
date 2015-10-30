% Initialiserer NXT'en med sensorer og motorer.
% Initialiserer joysticken.

if online
    % Initialiser NXT
    COM_CloseNXT('all')
    clear joymex2
    handle = COM_OpenNXT();
    COM_SetDefaultNXT(handle);
    
    % Initialiser sensorer (legg til etterhvert)
    OpenLight(SENSOR_3,'ACTIVE');  
    OpenAccelerator(SENSOR_1);  % åpner akselerometeret
  


    % Initialiser motorer (legg til etterhvert)
    motorC = NXTMotor('C');
    motorB = NXTMotor('B');
    
    % Initialiser joystick
    joymex2('open',0);
    joystick      = joymex2('query',0);
    JoyMainSwitch = joystick.buttons(1);

    
   % Initialiser figurer
   set(0,'DefaultFigureUnits','normalized')
   figure('Position',[0.01 0.01 0.9 0.9]);

end
