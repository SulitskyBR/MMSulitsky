model model_1

parameter Real a = 0.01;
parameter Real b = 0.02;
parameter Real N = 15500;
parameter Real I0 = 115;
parameter Real R0 = 15;
parameter Real S0 = N - I0 - R0;
Real S(start=S0);
Real I(start=I0);
Real R(start=R0);

equation
  // случай, когда I(0)<=I*
  der(S) = 0;
  der(I) = -b*I;
  der(R) = b*I;

  annotation(experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-6, Interval = 0.02));

end model_1;
