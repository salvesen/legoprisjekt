
% plotter data
% 
% subplot(2,2,1)
% bar(PowerA(k)),        % en bar som viser pådraget akkurat nå i tid=k
% axis([0 1 -100 100])
% title('Pådrag motor A i nuet')
% 
% subplot(2,2,2)
% bar(PowerC(k)),        % en bar som viser pådraget akkurat nå i tid=k
% axis([0 1 -100 100])
% title('Pådrag motor C i nuet')

% subplot(2,2,3)
% plot(Tid(1:k), Lyd(1:k))
% ylim([0 1300])
% subplot(3,1,2)
% plot(Tid(1:k),JoyForover(1:k)); % plotter joystickens verdi fra 1 til k. 
%                        % Må gjøre det på denne måten for at du skal 
%                        % få samme opplevelse når online=0. 
% title('Pådrag motor A som funksjon av SAMPLE k (egentlig ikke tid)')

% subplot(3,1,3)
% plot(Tid(1:k),Lys(1:k));  % plotter lysets verdi fra 1 til k. 
% title('Lysverdi som funksjon av SAMPLE k (egentlig ikke tid)')

% subplot(3,2,4)
% plot( Tid(1:k), PowerA(1:k),Tid(1:k) , PowerC(1:k))
% % JoyForover(k)+ JoySving(k);
%   JoyForover(k) - JoySving(k);
% Plotte intergrert lydverdi og tiden.
%     plot(Tid(1:k),LydIntergrert(1:k))
%     hold on
    plot(Tid(1:k),LydFiltrert(1:k))
    xlabel('Tid [sekund]')
    ylabel('Intergrert Lydsignal blå, Filtrert Lydsignal Rød')

% tegn nå (viktig kommando)
drawnow

