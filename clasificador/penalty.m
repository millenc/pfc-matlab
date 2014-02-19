function p = penalty(C,m)
p = 0;
for i=1:size(C,1)
    Csum = 0;
    for j=1:size(C,2)
        Csum = Csum + abs(C(i,j)-m(i)); 
    end
    p = p + Csum^2; 
end

end

