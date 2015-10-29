
% if online 
%    % Beregner motorpådrag og lagrer i datavektor 
%      PowerA(k) = JoyForover(k)+ JoySving(k);  %Forover+Sving=Forover&SvingHøyre
%      PowerC(k) = JoyForover(k) - JoySving(k); %Forover-Sving=Forover&SvingVenstre
%         
%     if  PowerA(k)>-5 && PowerA(k)<5        %Pådraget til MotorC=0 vist
%         PowerA(k)=0 ;                        %vist JoySticken gir en verdi til
%         PowerC(k)=0;                         % matlab mellom -5 og 5
%         motorA.Power = PowerA(k) ;
%         motorA.SendToNXT();
%     	motorC.Power = PowerC(k);
%         motorC.SendToNXT();
%     
%     elseif  PowerC(k)>-5 && PowerC(k)<5    %Pådraget til MotorC=0 vist
%         PowerC(k)=0;                         %vist JoySticken gir en verdi 
%         PowerA(k)=0 ;                        % til matlabmellom -5 og 5
%         motorC.Power = PowerC(k);
%         motorC.SendToNXT();
%         motorA.Power = PowerA(k) ;
%         motorA.SendToNXT();
%     
%     else
%         
%         motorA.Power = PowerA(k) ;
%         motorA.SendToNXT();
%         motorC.Power = PowerC(k);
%         motorC.SendToNXT();
%     end
% else
%     
%         
%     pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
% end
