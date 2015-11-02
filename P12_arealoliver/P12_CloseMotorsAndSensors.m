if online  
    motorB.Stop;      % Stopp motorer
    motorC.Stop;      % Stopp motorer
    clear joymex2     % Clear MEX-file to release joystick
    clear online k    % Clear online og k data (f�r eventuell lagring i *.mat)
    clear handle      % Clear handle to avoid warnings when online=0
    CloseSensor(SENSOR_3);     % Steng ned sensorer
    try
        COM_CloseNXT(handle);      % Close NXT connection
    catch
    end
end
