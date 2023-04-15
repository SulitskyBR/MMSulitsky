model model_2

  parameter Real w(start=2);
  parameter Real g(start=20);
  Real x(start = -2);
  Real y(start = 0);
  
equation

  der(x)=y;
  der(y)=-g*y-w*w*x;
  
  annotation(experiment(StartTime = 0, StopTime = 35, Tolerance = 1e-6, Interval = 0.05));

end model_2;
