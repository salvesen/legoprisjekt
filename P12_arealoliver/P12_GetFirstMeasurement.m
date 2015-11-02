
% F�r tak i f�rste m�ling fra NXT med tilh�rende tidspunkt.

if online==1
    k=1;                            %Counter 
    for i = 1:samples
        s(i)= GetUltrasonic(SENSOR_4); 
    end
    x(k)= (sum(s)/samples)
    
else
    load(filename)                  %Loads datafile
    online=0;                       %Incase datafile includes online == 1 
    m = Samples;                    %Incase datafile includes filter samples
    k=1;                            %Resets counter 
    JoyMainSwitch=0;                %Resets stop button
    LysFiltrertIIR = Lys(k);        %Light filtrated(IIR) set to light value
end



