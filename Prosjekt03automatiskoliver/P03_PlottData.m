
% plotter data
subplot(6,1,1)
plot(Tid(1:k),nullp(1:k),'g-',Tid(1:k),Lys(1:k),'b-',Tid(1:k),LysFiltrert(1:k),'r-');        
title('Nullpunkt, lyssignal og filtrert lyssignal')

subplot(6,1,2)
plot(Tid(1:k),nulll(1:k),Tid(1:k),LysIntegrert(1:k));        
title('Lyssignal integrert rundt null')

subplot(6,1,3)
plot(Tid(1:k-1),avvikderivert(1:k-1));        
title('Derivert av filtrert lyssignal')

subplot(6,1,4)
plot(Tid(1:k),avvik(1:k));        
title('Avvik')

subplot(6,1,5)
plot(Tid(1:k),PowerC(1:k));        
title('Motor venstre') %skal være piler

subplot(6,1,6)
plot(Tid(1:k),PowerB(1:k));        
title('Motor hoyre') %skal være piler
% tegn nå (viktig kommando)
drawnow

