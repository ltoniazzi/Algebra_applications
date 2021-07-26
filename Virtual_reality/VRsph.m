%start
x=0;
y = 0;
z = 0;
%directions
fw = [1 0 0];
bw = [-1 0 0];
lw = [0 1 0];
rw = [0 -1 0];
uw = [0 0 1];
dw = [0 0 -1];


c=1/2
[SS1,SS2,SS3] =  sphere(20);
S1 = SS1.*c; S2 = SS2.*c; S3 = SS3.*c;
surf(5+S1.*(c),5+S2.*(c),5+S3.*(c));
axis equal

for n =1:20
    hold on
    title('REACH THE SMALL YELLOW PLANET')
    surf(x+S1,y+S2,z+S3)
    hold off
    if [x y z] == [5 5 5]
        data=imread('images/neilba.jpg');
        imshow(data);
    else
        prompt = 'Enter either w,s,a,d,u,j and then enter to either move \n forward, back, left, right, up, down (facing in the x direction.)';
        inp = input(prompt,'s')
        if inp == 'w'
           x = x+ fw(1);
           y = y+ fw(2);
           z = z+ fw(3); 
        elseif inp == 's'
           x = x + bw(1);
           y = y + bw(2);
           z = z + bw(3); 
        elseif inp == 'a'
           x =  x + lw(1);
           y =  y + lw(2);
           z =  z + lw(3) ; 
        elseif inp == 'd'
           x =  x + rw(1) ;
           y =  y + rw(2) ;
           z =  z + rw(3) ; 
        elseif inp == 'u'
           x =  x + uw(1) ;
           y =  y +uw(2) ;
           z =  z + uw(3) ; 
        elseif inp == 'j'
           x =  x + dw(1) ;
           y =  y + dw(2) ;
           z =  z + dw(3) ;
        end
    end
   
    
end
