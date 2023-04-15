using PyPlot
using DifferentialEquations

range = (0, 20) # интервал времени
Pcr = 21 # критическая стоимость продукта
t1, t2 = 17, 20 # длительность производственного цикла каждой фирмы
p1, p2 = 14, 12 # себестоимость продукта для каждой фирмы
N = 24 # число потребителей производимого продукта
q = 1 # максимальная потребность одного человека в продукте в единицу времени
M1, M2 = 2.6, 1.9 # оборот средств каждой фирмы
a1 = Pcr / (t1*t1*p1*p1*N*q)
a2 = Pcr / (t2*t2*p2*p2*N*q)
b = Pcr / (t1*t1*t2*t2*p1*p1*p2*p2*N*q)
c1 = (Pcr - p1) / (t1*p1)
c2 = (Pcr - p2) / (t2*p2)
d = 0.0018 # постоянные издержки

function f1(du, u, p, t) # случа 1
    du[1] = u[1]-(b/c1)*u[1]*u[2]-(a1/c1)*u[1]*u[1]
    du[2] = (c2/c1)*u[2]-(b/c1)*u[1]*u[2]-(a2/c1)*u[2]*u[2]
end

function f2(du, u, p, t) # случай 2
    du[1] = u[1]-(b/c1+d)*u[1]*u[2]-(a1/c1)*u[1]*u[1]
    du[2] = (c2/c1)*u[2]-(b/c1)*u[1]*u[2]-(a2/c1)*u[2]*u[2]
end

function draw(text) # отображение
    ax = PyPlot.axes()
    ax.set_title(text * " (линейный)")
    ax.plot(time, m1, color="red")
    ax.plot(time, m2, color="blue")
    show()
    clf()
    ax = PyPlot.axes()
    ax.set_title(text * " (параметрический)")
    ax.plot(m1, m2, color="green")
    show()
end

ode = ODEProblem(f1, [M1,M2], range)
sol = solve(ode, dtmax=0.02)
m1 = [u[1] for u in sol.u]
m2 = [u[2] for u in sol.u]
time = [t for t in sol.t]
draw("Случай 1")

ode = ODEProblem(f2, [M1,M2], range)
sol = solve(ode, dtmax=0.02)
m1 = [u[1] for u in sol.u]
m2 = [u[2] for u in sol.u]
time = [t for t in sol.t]
draw("Случай 2")
