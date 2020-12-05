# batteryPackMATLAB
pdepe solver code on MATLAB for an LG MJ1 cell

pdex1bc.m provides the solver with the boundary conditions

pdex1ic.m provides the solver with initial conditions

pdex1pde.m provides the solver with the current, end time and heat power generation per unit volume per unit thermal conductivity for the three cases

pde11.m discretizes the radial distance and time into spatial steps and time steps. 
It also contains the solver, pdepe which uses the values given from pdex1pde, pdex1ic and pdex1bc to solve the 1D general conduction equation.
