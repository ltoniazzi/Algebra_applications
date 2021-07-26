x=2;
y = 0;
z = 0;
dir = [1 0 0]';



c=1/2
[SS1,SS2,SS3] =  sphere(20);
S1 = SS1.*c; S2 = SS2.*c; S3 = SS3.*c;
%surf(5+S1.*(c),5+S2.*(c),5+S3.*(c));

%axis([-1 5 -1 5 -.5 5.5])
axis equal

for n =1:50
        %figure
    %surf(dir(1)+S1.*(c),dir(2)+S2.*(c),dir(3)+S3.*(c));
    hold on
    %surf(dir(1)+S1.*(c),dir(2)+S2.*(c),dir(3)+S3.*(c));
    %surf(5+S1.*(c),5+S2.*(c),5+S3.*(c));
    title('ROTATION')
    %axis([-1 8], [-1 8],[-1 8])
    surf(x+S1,y+S2,z+S3)
    %plot(dir)
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
           dir = rotx(30)*dir; 
        elseif inp == 2
            dir = rotx(-30)*dir; 
        elseif inp == 3
           dir = rotz(30)*dir; 
        elseif inp == 4
            dir = rotz(-30)*dir; 
        elseif inp == 0
           x =  x + dir(1) ;
           y =  y + dir(2) ;
           z =  z + dir(3) ; 
        end
    end
   
    
end
%msgbox('PLANET NOT REACHED, BUT STILL NICE LINEAR ALGEBRA')
       
   
