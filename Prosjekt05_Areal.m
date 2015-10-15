%%
% Prosjekt01_IntegrateFilterDerivate
%
% Program for kjøring av motor A via joystick.  
% Måling av lyssignal og plotting av data som funksjon av tid
% Programmet skal brukes til etablering av funksjonene for 
% integrasjon, filtrering og derivasjon.

clear; close all       % Alltid lurt å rydde opp først
online=1;              % Er du koplet til NXT eller ikke?
filename = 'ArealAbdi.m'; % Angi navnet på datafilen dersom online=0. 
                          % Brukes ikke dersom online=1 

P05_InitializeNXT 
P05_GetFirstMeasurement
while ~JoyMainSwitch
    P05_GetNewMeasurement
    P05_MathCalculations    
    P05_CalculateAndSetMotorPower
    
end
P05_CloseMotorsAndSensors

%disp(Totalarealen);