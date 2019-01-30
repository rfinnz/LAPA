%Author Richard Finney 100967048

nx = 10;ny = 10;

V = zeros(nx,ny);

i = 10;

V(:,1) = 1;
V(:,10) = 0;

maxit = 100;


for i =1:maxit
for j=1:ny
for i=2:1:nx-1
    
    if (j ==1)
        V(i,j) = (V(i+1,j) + V(i-1,j) + V(i,j+1) - 2*V(i, j))/3;
   
    
    elseif (j==ny)
        V(i,j) = (V(i+1,j)+ V(i-1,j) + V(i,j-1))/3;
        
    else
       
V(i,j) = (V(i+1,j) + V(i-1,j) + V(i,j+1) + V(i,j-1))/4;
pause(0.5)
surf(V);

V(:,1) = 1;
V(:,10) = 0;
end
end
end
end