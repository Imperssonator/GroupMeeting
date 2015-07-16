%THis is a test from Mike

disp('hello world')


VD=-3
W=2000
L=50
C=11.15*10^-8

VG = VG
ID = ID
% axis([0 2 -0.5 6])
% hold on
plot(VG,ID,'ro')
title('Data points')
% hold off
options=optimoptions(@lsqcurvefit, 'alg','levenberg-marquardt',  'MaxIter', 4000, 'MaxFunEvals', 6000)

F = @(x,xdata) VD./(x(1)+1./(W/L*x(2)*C*(xdata-x(3))))
x0 = [1 1 1];

[x,resnorm,~,exitflag,output] = lsqcurvefit(F,x0,VG,ID, [], [], options)

hold on
plot(VG,F(x,VG))
hold off