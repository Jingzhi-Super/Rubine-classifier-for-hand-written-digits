function [result] = classification(f,Wc,Wc0)
% gesture classification
v=zeros(10,1);
for c=1:10
    s=Wc0(c);
    for i=1:13
        s=s+Wc{c}(i)*f(i);
    end
    v(c)=s;
end
result=find(v==max(v))-1;
result=result(1);


end

