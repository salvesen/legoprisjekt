


% f2 = figure(2);  %Sets frame to 2
% %Sets position for frame
% set(f2,'Position',...
%     [(scrsz(3)/3 + ((scrsz(3)/3)/2)) scrsz(4)/3 scrsz(3)/3 scrsz(4)/3]);
% subplot(3,1,1)
% h = plot(Tid(1:k),Lys(1:k),Tid(1:k),LysFiltrert(1:k))   %plots light and filtrated
% %set(h, 'XData',Tid(1:k),'YData',Lys(1:k))
% title('Lyssignal RAW og filtrert')
% xlabel('tid [sekund]')
% ylabel('Lyssignal')
set(h7,'XData',Tid(1:k),'YData',Lys(1:k)) 
set(h8,'XData',Tid(1:k),'YData',LysFiltrert(1:k))



% 
% subplot(3,1,2)
% plot(Tid(1:k-1),LysDerivert(1:k-1))                %plots derivated
% title('Lyssignalet derivert')
% xlabel('tid [sekund]')
% ylabel('Derivert')
set(h9,'XData',Tid(1:k-1),'YData',LysDerivert(1:k-1)) 

% subplot(3,1,3)
% plot(Tid(1:k),Lys(1:k),Tid(1:k),LysFiltrertIIR(1:k))   %plots light and filtratedIIR
% title('Lyssignal filtrert med IIR')
% xlabel('tid [sekund]')
% ylabel('Lyssignal')
set(h10,'XData',Tid(1:k),'YData',Lys(1:k)) 
set(h11,'XData',Tid(1:k),'YData',LysFiltrertIIR(1:k))

