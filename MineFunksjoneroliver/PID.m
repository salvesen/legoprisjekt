function output = PID(proporsjonal,integral,derivate,Kp,Ki,Kd)
%Conventional PID controller
%   This is an conventional PID controller, try and adjust Kp first and then
%   use ziegler and nichols to calculate Ki and Kd. Start by setting Kp to
%   max motorpower(100) and then devide by max deviation(aprox 175). If the
%   oscilliation of the robot is too high adjust Kp down, if it cant follow
%   line adjust Kp up.
    output = round(Kp*proporsjonal + Ki*integral + Kd*derivate);
    
end

