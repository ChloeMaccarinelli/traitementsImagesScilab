%Modified code for Sobel filter
Original_Image = imread('_a trouver.bmp');
%Gray_Edge_Image = rgb2gray (Original_Image);
Temp_Image = double (Original_Image) ;
%variable for finding maximum value across Matrix
max_value = -1 ;
%Start iterate from first corner to last corner
% size(Temp_Image,1) gives number of rows; we subtract 2 bec. of leaving  boundry
for i = 2 : size(Temp_Image,1) - 1
    for j = 2 : size (Temp_Image, 2) - 1
        %calculating gradient in X direction
        X_Gradient =((Temp_Image( i+ 1 , j - 1 )+ 2*Temp_Image(i+1,j)+Temp_Image (i+1,j+1) )-( Temp_Image(i-1,j-1)+ 2*Temp_Image(i-1,j)+Temp_Image(i-1,j+1)));
        %calculating gradient in Y direction
        Y_Gradient = ( ( Temp_Image(i-1,j+1) + 2*Temp_Image(i,j+1)+ Temp_Image (i+1,j+1) ) - ( Temp_Image(i-1,j-1)+ 2*Temp_Image(i,j-1) + Temp_Image (i+1,j-1)));
        Original_Image (i-1 , j-1) = sqrt ( Y_Gradient*Y_Gradient + X_Gradient*X_Gradient );
       
       
 if (max_value < Original_Image ( i-1, j-1 ) )
            max_value = Original_Image ( i-1 ,j-1 )  ;
        end
    end
end


%converting whole image value in between 0 to 255; division makes it in range of [0,1]
for i = 2 : size(Temp_Image,1)-1 
    for j = 2 : size (Temp_Image, 2)-1
        Original_Image ( i-1 ,j-1 ) =((Original_Image ( i-1 ,j-1 )/ max_value ) * 255 );
       
    end
end
figure, imshow('_a trouver.bmp'), figure, imshow(Original_Image);
            