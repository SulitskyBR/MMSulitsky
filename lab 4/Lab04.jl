using PyPlot
using DifferentialEquations

range = (0, 35)
X = -2
Y = 0

function f1(du, u, p, t) # первое уровение
    du[1] = u[2]
    du[2] = -w*u[1]
end

function f2(du, u, p, t) # второе уровнение
    du[1] = u[2]
    du[2] = -g*u[2]-w^2*u[1]
end

function f3(du, u, p, t) # третье уровнение
    du[1] = u[2]
    du[2] = -g*u[2]-w^2*u[1]+2*sin(t)
end

function draw(p) # отрисовка
    ax = PyPlot.axes() # Параметрические координаты
    ax.set_title(p)
    ax.plot(x, y, linestyle="-", color="red")
    show()
    close()
    ax = PyPlot.axes() # Линейные координаты
    ax.set_title(p)
    ax.plot(time, x, linestyle="-", color="blue")
    ax.plot(time, y, linestyle="-", color="green")
    show()
    close()
end

w = 5.5 # случай 1
ode = ODEProblem(f1, [X,Y], range)
sol = solve(ode, dtmax=0.05)
x = [u[1] for u in sol.u]
y = [u[2] for u in sol.u]
time = [t for t in sol.t]
draw("Случай 1")

g = 20 # случай 2
w = 2
ode = ODEProblem(f2, [X,Y], range)
sol = solve(ode, dtmax=0.05)
x = [u[1] for u in sol.u]
y = [u[2] for u in sol.u]
time = [t for t in sol.t]
draw("Случай 2")

g = 1 # случай 3
w = 9
ode = ODEProblem(f3, [X,Y], range)
sol = solve(ode, dtmax=0.05)
x = [u[1] for u in sol.u]
y = [u[2] for u in sol.u]
time = [t for t in sol.t]
draw("Случай 3")
