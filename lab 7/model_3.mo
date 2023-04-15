model model_3

parameter Real N= 1210;
parameter Real N0= 13;
Real n(start=N0);

function k
  input Real t;
  output Real result;
algorithm
  result:= 0.75*sin(0.5*t); //коэф.1
end k;

function p
  input Real t;
  output Real result;
algorithm
  result:=  0.35*sin(0.6*t); //коэф.2
end p;

equation
  der(n)=(k(time)+p(time)*n)*(N-n);

  annotation(experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.01));

end model_3;
