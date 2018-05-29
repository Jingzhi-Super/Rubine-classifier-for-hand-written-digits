function [answer] = rejection(result,Eij,f,fc)
% rejection
iEij=inv(Eij);
i=result+1;
de=0;
for j=1:13
    for k=1:13
        de=de+iEij(j,k)*(f(j)-fc{i}(j))*(f(k)-fc{i}(k));
    end
end
if de > 0.5*13*13
    answer='*';
else
    answer=result;
end


end

