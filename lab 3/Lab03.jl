using PyPlot
using DifferentialEquations

const X = 120000
const Y = 90000
range = (0, 10)

function f1(du, u, p, t)
    du[1] = -0.35*u[1] -0.75*u[2] + sin(t) + 1
    du[2] = -0.29*u[1] -0.65*u[2] + cos(t) + 1
end

function f2(du, u, p, t)
    du[1] = -0.24*u[1] -0.61*u[2] + sin(2t)
    du[2] = -0.3*u[1]*u[2] -0.71*u[2] + cos(3t)
end

function draw(p)
    PyPlot.axes() # Параметрические координаты
    plot(x, y, color="red")
    show()
    clf()
    PyPlot.axes() # линейные координаты
    plot(time, x, color="blue")
    plot(time, y, color="green")
    show()
end


ode = ODEProblem(f1, [X,Y], range)
sol = solve(ode, dtmax=0.001)
x = [u[1] for u in sol.u]
y = [u[2] for u in sol.u]
time = [t for t in sol.t]
draw("Армия из регулярными войсками")

ode = ODEProblem(f2, [X,Y], range)
sol = solve(ode, dtmax=0.001)
x = [u[1] for u in sol.u]
y = [u[2] for u in sol.u]
time = [t for t in sol.t]
draw("Армия с партизанскими отрядами")
