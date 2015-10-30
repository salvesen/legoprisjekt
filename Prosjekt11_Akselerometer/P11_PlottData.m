% 
% % plotter data
% % 
% subplot(3,1,1)
% bar(PowerA(k));        % en bar som viser pådraget akkurat nå i tid=k
% axis([0 1 -100 100])
% title('Pådrag motor A i nuet')
% 
% subplot(3,1,2)
% plot(Tid(1:k),JoyForover(1:k)); % plotter joystickens verdi fra 1 til k. 
%                        % Må gjøre det på denne måten for at du skal 
%                        % få samme opplevelse når online=0. 
% title('Pådrag motor A som funksjon av SAMPLE k (egentlig ikke tid)')
% 
% subplot(3,1,3)
% plot(Tid(1:k),Lys(1:k));  % plotter lysets verdi fra 1 til k. 
% title('Lysverdi som funksjon av SAMPLE k (egentlig ikke tid)')
%      
    % plotting av tilt
    subplot(3,2,1)
    plot(Tid(1:k),Tilt(1,1:k))
    title('Tilt x-retning')
    axis([-Inf Inf -5 260])
    subplot(3,2,3)
    plot(Tid(1:k),Tilt(2,1:k))
    title('Tilt y-retning')
    axis([-Inf Inf -5 260])
    subplot(3,2,5)
    plot(Tid(1:k),Tilt(3,1:k))
    title('Tilt z-retning')
    axis([-Inf Inf -5 260])

    % plotting av akselerasjon
    subplot(3,2,2)
    plot(Tid(1:k),Acceleration(1,1:k))
    title('Akselerasjon x-retning')
    axis([-Inf Inf -1500 1500])
    subplot(3,2,4)
    plot(Tid(1:k),Acceleration(2,1:k))
    title('Akselerasjon y-retning')
    axis([-Inf Inf -1500 1500])
    subplot(3,2,6)
    plot(Tid(1:k),Acceleration(3,1:k))
    title('Akselerasjon z-retning')
    axis([-Inf Inf -1500 1500])
    drawnow

% subplot(3,2,4)
% plot( Tid(1:k), PowerA(1:k),Tid(1:k) , PowerC(1:k))
% % JoyForover(k)+ JoySving(k);
%   JoyForover(k) - JoySving(k);
    
% tegn nå (viktig kommando)
% drawnow

