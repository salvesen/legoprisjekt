%%
% Prosjekt01_IntegrateFilterDerivate
%
% Program for kjøring av motor A via joystick.  
% Måling av lyssignal og plotting av data som funksjon av tid
% Programmet skal brukes til etablering av funksjonene for 
% integrasjon, filtrering og derivasjon.

clear; close all       % Alltid lurt å rydde opp først
online=1;              % Er du koplet til NXT eller ikke?
filename = 'P01_Lys.mat'; % Angi navnet på datafilen dersom online=0. 
                          % Brukes ikke dersom online=1 

P11_InitializeNXT 
P11_GetFirstMeasurement
while ~JoyMainSwitch
    P11_GetNewMeasurement
    P11_MathCalculations    
    P11_CalculateAndSetMotorPower
    P11_PlottData
end
P11_CloseMotorsAndSensors


