% beregner hvordan joystickdata skal brukes for 
% å få motorene til å bevege seg

if online 
    % Beregner motorpådrag og lagrer i datavektor
    PowerB(k) = JoyForover(k)+JoySide(k);
    PowerC(k) = JoyForover(k)-JoySide(k);
    if PowerB(k) >= 100
        motorB.Power = 99;
        motorB.SendToNXT();
    else
        motorB.Power = PowerB(k);
        motorB.SendToNXT();
    end
    % Setter powerdata mot NXT
    if PowerC(k) >= 100
        motorC.Power = 99;
        motorC.SendToNXT();
    else
        motorC.Power = PowerC(k);
        motorC.SendToNXT();
    end
else
    pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
end
