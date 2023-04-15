model model_3

  parameter Real w(start=9);
  parameter Real g(start=1);
  Real x(start = -2);
  Real y(start = 0);
  
equation

  der(x)=y;
  der(y)=-g*y-w*w*x+2*sin(time);
  
  annotation(experiment(StartTime = 0, StopTime = 35, Tolerance = 1e-6, Interval = 0.05));  

end model_3;
