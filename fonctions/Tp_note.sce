function I= Contour(I)
    [n,m]=size (I);
    I=I*255;
    I=uint8(I);
    for i= 1:n
        for j=1:m
            if I(i,j)==0 then
                if I(i+1,j)==255 then
                    I(i+1,j)=128;
                end
                if I(i,j+1)==255 then
                    I(i,j+1)=128;
                end
                if I(i+1,j+1)==255 then
                    I(i+1,j+1)=128;
                end
                if I(i-1,j)==255 then
                    I(i-1,j)=128;
                end
                 if I(i-1,j-1)==255 then
                    I(i-1,j-1)=128;
                end
                if I(i+1,j-1)==255 then
                    I(i+1,j-1)=128;
                end
                if I(i,j-1)==255 then
                    I(i,j-1)=128;
                end
                if I(i+1,j-1)==255 then
                    I(i+1,j-1)=128;
                end
                if I(i-1,j+1)==255 then
                    I(i-1,j+1)=128;
                end
            end
        end
    end
endfunction
