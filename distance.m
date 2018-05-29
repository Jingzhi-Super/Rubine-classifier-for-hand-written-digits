function [d,dx,dy,dt] = distance(data)
% calculate the distance between every two data points

x=data(:,1);
y=data(:,2);
t=data(:,3);
dx=x(2:end)-x(1:end-1);
dy=y(2:end)-y(1:end-1);
d=sqrt(dx.^2+dy.^2);
dt=t(2:end)-t(1:end-1);

end

