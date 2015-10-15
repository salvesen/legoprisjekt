for i = 0:360
    
    x(i)= GetUltrasonic(SENSOR_4);
    y= x(i)*tand(10);
    
    Areal = ( x(i)*y)/2            % arealet av en trekant (G * H)/2
 
    
   if i <1
      Areal = 0
      
   end
  
   Totalarealen = Sum(Areal);
   