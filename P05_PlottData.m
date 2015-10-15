
% plotter data
subplot(3,1,1)
bar(PowerA(k));        % en bar som viser pådraget akkurat nå i tid=k
axis([0 1 -100 100])
title('Pådrag motor A i nuet')

subplot(3,1,2)
plot(Tid(1:k),JoyForover(1:k)); % plotter joystickens verdi fra 1 til k. 
                       % Må gjøre det på denne måten for at du skal 
                       % få samme opplevelse når online=0. 
title('Pådrag motor A som funksjon av SAMPLE k (egentlig ikke tid)')

subplot(3,1,3)
plot(Tid(1:k),Lys(1:k));  % plotter lysets verdi fra 1 til k. 
title('Lysverdi som funksjon av SAMPLE k (egentlig ikke tid)')

% tegn nå (viktig kommando)
drawnow

