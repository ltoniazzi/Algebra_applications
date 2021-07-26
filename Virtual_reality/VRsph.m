x=0;
y = 0;
z = 0;
fw = [1 0 0];
bw = [-1 0 0];
lw = [0 -1 0];
rw = [0 1 0];
uw = [0 0 1];
dw = [0 0 -1];


c=1/2
[SS1,SS2,SS3] =  sphere(20);
S1 = SS1.*c; S2 = SS2.*c; S3 = SS3.*c;
surf(5+S1.*(c),5+S2.*(c),5+S3.*(c));
% [verts, faces, cindex] = teapotGeometry;
% figure
% p = patch('Faces',faces,'Vertices',verts,'FaceVertexCData',cindex,'FaceColor','interp')

%[U,V,W] = surfnorm(X,Y,Z);
%quiver3(X,Y,Z,U,V,W,0)
axis equal

% 



for n =1:20
        %figure
    hold on
    title('REACH THE SMALL YELLOW PLANET')
    surf(x+S1,y+S2,z+S3)
    %surf(S1,S2,S3)
    hold off
    if [x y z] == [5 5 5]
        %msgbox('WE REACHED THE PLANET, THANKS TO LINEAR ALGEBRA')
        data=imread('neilba.jpg');
        imshow(data);
    else
        prompt = 'w,s,a,d: ';
        inp = input(prompt)
        if inp == 1
           x = x+ fw(1);
           y = y+ fw(2);
           z = z+  fw(3); 
        elseif inp == 2
           x = x+ bw(1);
           y =  y + bw(2) ;
           z =  z + bw(3) ; 
        elseif inp == 4
           x =  x + lw(1) ;
           y =  y +lw(2) ;
           z =  z + lw(3) ; 
        elseif inp == 3
           x =  x + rw(1) ;
           y =  y + rw(2) ;
           z =  z + rw(3) ; 
        elseif inp == 5
           x =  x + uw(1) ;
           y =  y +uw(2) ;
           z =  z + uw(3) ; 
        elseif inp == 6
           x =  x + dw(1) ;
           y =  y + dw(2) ;
           z =  z + dw(3) ;
        end
    end
   
    
end
%msgbox('PLANET NOT REACHED, BUT STILL NICE LINEAR ALGEBRA')
       
    

  % 
% [X,Y] = meshgrid(-10:0.25:20,-10:0.2:10);
% Z = sqrt(-X.^2 -Y.^2+1);
% surf(X,Y,Z)