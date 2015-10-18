% beregner hvordan joystickdata skal brukes for 
% å få motorene til å bevege seg

if online 
%     if reg(k) > fart 
%         reg(k) = fart;
%     elseif reg(k) < -1*fart
%         reg(k) = -1*fart;
%     end
    if (fart - reg(k)) > 100
        motorB.Power = 100;
        %motorB.SendToNXT();
        %PowerB(k) = motorB.Power;
    elseif (fart - reg(k)) < -100
        motorB.Power = -100;
        %motorB.SendToNXT();
        %PowerB(k) = motorB.Power;
    else
        motorB.Power = fart - reg(k);
        %motorB.SendToNXT();
        %PowerB(k) = motorB.Power;
    end
    if (fart + reg(k)) > 100
        motorC.Power = 100;
        %motorC.SendToNXT();
        %PowerC(k) = motorC.Power;
    elseif (fart + reg(k)) < -100
        motorC.Power = -100;
        %motorC.SendToNXT();
        %PowerC(k) = motorC.Power;
    else
        motorC.Power = fart + reg(k);
        %motorC.SendToNXT();
        %PowerC(k) = motorC.Power;
    end
        motorC.SendToNXT();
        PowerC(k) = motorC.Power;
        motorB.SendToNXT();
        PowerB(k) = motorB.Power;
   

else
    pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
end
