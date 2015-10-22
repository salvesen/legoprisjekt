


f1 = figure(1) ;     %Sets frame to 1
%Sets position for frame
set(f1,'Position',...
    [(scrsz(3)/3 - ((scrsz(3)/3)/2)) scrsz(4)/3 scrsz(3)/3 scrsz(4)/3]);
subplot(3,1,1)
plot(Tid(1:k),Lys(1:k),Tid(1:k),nullp(1:k))     %plots light signal and zero
title('Lyssignal RAW')                          
xlabel('tid [sekund]')
ylabel('Lyssignal')



subplot(3,1,2)
plot(Tid(1:k),avvik(1:k),Tid(1:k),nulll(1:k))   %plots deviation and zero(real)
title('Avvik fra nullpunkt og nåværende lyssignal')
xlabel('tid [sekund]')
ylabel('Avviket')



subplot(3,1,3)
plot(Tid(1:k),LysIntegrert(1:k),Tid(1:k),nulll(1:k))    %Plots integrated and zero(real)
title('Lys integrert rundt nullpunktet')
xlabel('tid [sekund]')
ylabel('Areal')


drawnow
