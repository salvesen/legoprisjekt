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
scrsz = get(groot,'ScreenSize');    %Get screensize
Samples = 10;                       %Number of samples used in FIR filter
% P = (0.6*(100/240))*0.45;
% I = ((2*(100/240)*0.5)/0.057)*0.030;
% D = (((100/240)*0.5)/(8*0.057))*0.45;
P = (0.6*(100/240))*2.0175;
I = (0.5/2)*1.1265;
D = (0.5/8)*0.17275;

fart = 15;
                         


P03_InitializeNXT 
P03_GetFirstMeasurement
while JoyMainSwitch == 0 && LysFiltrert(k) < 650
    P03_GetNewMeasurement          
    P03_MathCalculations    
    P03_CalculateAndSetMotorPower 
    P03_PlottData 

    
    
end
verdi = Tid(k)*100 + LysIntegrert(k)
P03_CloseMotorsAndSensors





