function M = histogramme(I)
[n,m] = size(I);
I=I*255;
I=uint8(I);
M = [0,0,0];

    for i=1:n
        for j = 1:m
            if I(i,j) == 0 then
                M(1) = M(1)+1;
           end
           if I(i,j) == 255 then
               M(2) = M(2)+1;
           end
           if I(i,j) == 128 then
               M(3) = M(3)+1;
           end
           
        end
    end
endfunction
// ou uitliser imhist
