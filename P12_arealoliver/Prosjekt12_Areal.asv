%%
% Prosjekt01_IntegrateFilterDerivate
%
% Program for kjøring av motor A via joystick.  
% Måling av lyssignal og plotting av data som funksjon av tid
% Programmet skal brukes til etablering av funksjonene for 
% integrasjon, filtrering og derivasjon.

clear,clc, close all                %Cleans workspace, figures and cmdw
online=1;                           %1 if NXT is connected to computer, set manually.
filename = 'heihei.mat';           %If online = 0, this data file is used

vinkel = 10;                         %Antall grader pr vinkel
samples = 10;                       %Antall målinger pr vinkel
                         


P12_InitializeNXT 
P12_GetFirstMeasurement
for i = 1:(360/vinkel)
    P12_GetNewMeasurement          
    P12_MathCalculations    
    %P12_CalculateAndSetMotorPower 
    %P12_PlottData 

    
    
end
totareal = sum(areal) 





