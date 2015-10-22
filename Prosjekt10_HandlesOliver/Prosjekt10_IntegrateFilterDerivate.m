%%
% Prosjekt01_IntegrateFilterDerivate
%
% Program for kjøring av motor A via joystick.  
% Måling av lyssignal og plotting av data som funksjon av tid
% Programmet skal brukes til etablering av funksjonene for 
% integrasjon, filtrering og derivasjon.

clear,clc, close all                %Cleans workspace, figures and cmdw
online=0;                           %1 if NXT is connected to computer, set manually.
filename = 'P01_Lys.mat';           %If online = 0, this data file is used
scrsz = get(groot,'ScreenSize');    %Get screensize
Samples = 10;                       %Number of samples used in FIR filter
                          


P10_InitializeNXT                   %Initialize the NXT/joystick
P10_GetFirstMeasurement             %Get and calculate first messurments
while ~JoyMainSwitch                %While startbutton not pressed
    P10_GetNewMeasurement           %Gets new light mesurment and checks stopbutton       
    P10_MathCalculations            %Calculates stuff
    P10_Plott3_7                    %Plots assaignment 3.7pid
    P10_Plott3_14                   %Plots assaignment 3.14
    
    
    
end
P10_CloseMotorsAndSensors






