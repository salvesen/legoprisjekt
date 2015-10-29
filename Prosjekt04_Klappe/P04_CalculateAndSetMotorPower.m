% beregner hvordan joystickdata skal brukes for 
% å få motorene til å bevege seg


if online 
    Drive=6;
    Drive_backwards=-6;


        if rettfrem==1 || rettfrem_holdefunksjon==1 
         motorC.Power = Drive ;
         motorC.SendToNXT();
         motorB.Power = Drive;
         motorB.SendToNXT();
         
        
        elseif stopp==1 || stopp_holdefunksjon==1
        
        motorC.Stop ;
        motorC.SendToNXT();
        motorB.Stop;
        motorB.SendToNXT();
       
      
        
        elseif bakover==1 || bakover_holdefunksjon==1==1
      
        motorC.Power= Drive_backwards;
        motorC.SendToNXT();
        motorB.Power=Drive_backwards;
        motorB.SendToNXT();
        
        else 
        motorC.Stop ;        %vist det ikke er gitt noen komando så skal
        motorC.SendToNXT();  %roboten stå iro.
        motorB.Stop;
        motorB.SendToNXT();
       
        
        end  
        
        
 else  
    pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
end
       
