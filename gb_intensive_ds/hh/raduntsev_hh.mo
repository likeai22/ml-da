class raduntsev_hh
  constant Real G = 9.80665; 
  constant Real PI = Modelica.Constants.pi;
  parameter Real m = 1, L(start = 5, fixed = true);
  Real l;
  output Real g, F;
  Real x(start = 3, fixed = true); 
  Real y(start = -4, fixed = true);
  output Real vx, vy;
equation
  g = G + 0.05 * sin(2 * PI * time);  
  der(vx) = -(x/(m * L)) * F;
  der(vy) = -(y/(m * L)) * F - g;
  der(x) = vx;
  der(y) = vy;
  sqrt(x^2 + y^2) = l;
  x^2 + y^2 = L^2;
end raduntsev_hh;
