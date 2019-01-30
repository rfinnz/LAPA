%Author Richard Finney 100967048

nx = 10;ny = 10;

V = zeros(nx,ny);

i = 10;

V(:,1) = 1;
V(:,10) = 0;

maxit = 100;



for j=2:1:ny-1
for i=2:1:nx-1
    
V(i,j) = V(i+1,j) - 2*V(i, j) + V(i-1,j) + V(i,j+1) - 2*V(i, j) + V(i,j-1);
pause(0.5)
surf(V,'EdgeColor','none');

end
end
