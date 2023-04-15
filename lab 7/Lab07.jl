using PyPlot
using DifferentialEquations

range = (0, 1)
N = 1210
N0 = 13

function f_1(du, u, p, t) # функция для 1 и 2 случая
    du[1] = (a1 * t + a2 * t * u[1]) * (N - u[1])
end

function f_2(du, u, p, t) # функция для случай 3
    du[1] = (a1 * sin(0.5*t) + a2 * sin(0.6*t) * u[1]) * (N - u[1])
end

function draw() # отображение
    PyPlot.axes()
    plot(time, n, color="red")
    show()
    close()
end

a1 = 0.7 # случай 1
a2 = 0.000051
ode = ODEProblem(f_1, [N0], range)
sol = solve(ode, dtmax=0.01)
n = [u[1] for u in sol.u]
time = [t for t in sol.t]
draw()

a1 = 0.00004 # случай 2
a2 = 0.75
ode = ODEProblem(f_1, [N0], range)
sol = solve(ode, dtmax=0.01)
n = [u[1] for u in sol.u]
time = [t for t in sol.t]
draw()

a1 = 0.75 # случай 3
a2 = 0.35
ode = ODEProblem(f_2, [N0], range)
sol = solve(ode, dtmax=0.01)
n = [u[1] for u in sol.u]
time = [t for t in sol.t]
draw()