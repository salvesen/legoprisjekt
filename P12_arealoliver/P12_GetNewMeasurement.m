
% Leser inn nye data fra joystick og fra sensorer på NXT

k=k+1;                                       %Increase counter
if online
    motorB = NXTMotor('B','Power',10,'TachoLimit',vinkel);
    motorB.SendToNXT();
    motorB.WaitFor();
    for i = 1:samples
        s(i)= GetUltrasonic(SENSOR_4); 
    end
    x(k)= (sum(s)/samples)
else
    if k==numel(Lys)                         %Checks when we run out of light mesurments in data file
        JoyMainSwitch=1;                     %Simulates that joystick is pressed
    end
end
