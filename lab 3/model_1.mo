model model_1
  parameter Real a( start=0.35);
  parameter Real b( start=0.75);
  parameter Real c( start=0.29);
  parameter Real h( start=0.65);
  Real x(start=120000);
  Real y(start=90000);
  
  equation
    der(x)=-a*x-b*y+sin(time)+1;
    der(y)=-c*x-h*y+cos(time)+1;
  
  annotation(experiment(StartTime=0, StopTime=10, Tolerance=1e-6, Interval=0.05));  

end model_1;


