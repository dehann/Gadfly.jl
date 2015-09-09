
using Gadfly, Compat

plot(layer((x,y) -> x*exp(-(x-(@compat round(Int, x)))^2-y^2), -8., 8, -2., 2),
     layer((x, y) -> sqrt(hypot(x, y)), -2, 2, -1, 1),
     layer(x=[3], y=[1.5], Geom.point))
