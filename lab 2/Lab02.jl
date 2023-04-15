using PyPlot
using DifferentialEquations

s = 6.7 # растояние
v = 2.7 # разница в скорости
span = (0, 50)
angle = 5*pi/4 # угол соприкосновения

function f(du, u, p, t) # функция уровнения
    du[1] = 1
    du[2] = sqrt(v*v - 1) / u[1]
end

touchPoint(k, a) = for (i,k) in enumerate(k)
        if (round(k, digits = 3) == round(a, digits = 3))
            return intersection = r[i]
        end
    end

function draw() # отображение
    PyPlot.axes(polar="true")
    scatter(angle, intersection, color="red")
    plot(t, r, linestyle="-", color="green")
    plot([0, angle], [0, span[2]], color="k")
    println("Точка соприкосновения: (", angle, " ; ", intersection, ")")
    show()
    clf()
end

r0 = s / (v + 1) # случай 1
t0 = 0.0
ode = ODEProblem(f, [r0,t0], span)
sol = solve(ode, dtmax=0.001)
r = [u[1] for u in sol.u]
t = [u[2] for u in sol.u]
intersection = touchPoint(t, angle)
draw()

r0 = s / (v - 1) # случай 2
t0 = -2pi/3
ode = ODEProblem(f, [r0,t0], span)
sol = solve(ode, dtmax=0.001)
r = [u[1] for u in sol.u]
t = [u[2] for u in sol.u]
intersection = touchPoint(t, angle)
draw()