function [newdata] = discard(d,data)
% an input point within a very distance of the previous input point is
% discarded

n=size(d,1);
j=1;s=[];
for i=1:n-1
    if d(i) < 0.01
        d(i+1)=d(i+1)+d(i);
        s(j)=i;
        j=j+1;
    end
end
modify=d;
modify(s)=[];
newdata=data;
newdata(s+1,:)=[];
if modify(end) < 0.01
    newdata(end,:)=[];
end

end

