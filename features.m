function [F] = features(data,d,dx,dy,dt)
% computing the features of the input 
x=data(:,1);y=data(:,2);t=data(:,3);
f1=(x(3)-x(1))/sqrt((x(3)-x(1))^2+(y(3)-y(1))^2); % feature 1
f2=(y(3)-y(1))/sqrt((x(3)-x(1))^2+(y(3)-y(1))^2); % feature 2
f3=sqrt((max(x)-min(x))^2+(max(y)-min(y))^2); % feature 3
f4=atan((max(y)-min(y))/(max(x)-min(x))); % feature 4
f5=sqrt((x(end)-x(1))^2+(y(end)-y(1))^2); % feature 5
f6=(x(end)-x(1))/f5; % feature 6
f7=(y(end)-y(1))/f5; % feature 7
f8=sum(d); % feature 8
temp=atan((dx(2:end).*dy(1:end-1)-dx(1:end-1).*dy(2:end))./(dx(2:end).*...
        dx(1:end-1)+dy(2:end).*dy(1:end-1)));
f9=sum(temp); % feature 9
f10=sum(abs(temp)); % feature 10
f11=sum(temp.^2); % feature 11
f12=max((dx.^2+dy.^2)./dt.^2); % feature 12
f13=t(end)-t(1); % feature 13
F=[f1;f2;f3;f4;f5;f6;f7;f8;f9;f10;f11;f12;f13];

end

