function R= Retrouve(I,J)
    [n,m]= size(I);
    [n,m] = size(J);
    
    I=I*255;
    J=J*255;
    I=uint8(I);
    J=uint8(J);
    
    A = imhist(I);
    ;
    for i=1:n
        for j = 1:m
            B = imhist(J)
             if A == B then
                        if comparer(I,J) then
                            Contour(J);
                        end
                        
             end
         end
    end

    endfunction
