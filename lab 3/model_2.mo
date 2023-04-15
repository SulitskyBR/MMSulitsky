model model_2
  parameter Real a( start=0.24);
  parameter Real b( start=0.61);
  parameter Real c( start=0.3);
  parameter Real h( start=0.71);
  Real x(start=120000);
  Real y(start=90000);
  
  equation
    der(x)=-a*x-b*y+sin(2*time);
    der(y)=-c*x*y-h*y+cos(3*time);
  
  annotation(experiment(StartTime=0, StopTime=10, Tolerance=1e-6, Interval=0.05));  

end model_2;
