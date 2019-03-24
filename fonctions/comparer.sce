function bool = comparer(I,J)
[n,m]=size(I);
I=I*255;
I=uint8(I);
[n,m]=size(J);
J=J*255;
J=uint8(J);

bool= %T;
for i=1:n
    for j= 1:m
        if I(i,j)~=J(i,j) then
            bool = %F;
        end
    end
    
end
endfunction
