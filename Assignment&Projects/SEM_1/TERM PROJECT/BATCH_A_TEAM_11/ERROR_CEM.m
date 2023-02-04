P = 10.0 :5.0 :100.0;

x = [-1 0 0 0 0 0 1*cosd(27) 0 1 0 0 0 0 0 0 0;
0 1 0 0 0 0 1*sind(27) 0 0 0 0 0 0 0 0 0;
0 0 -1*sind(37) -1*sind(63) 0 0 0 0 0 0 0 0 0 0 0 0;
0 0 -1*cosd(63) -1*cosd(63) 0 0 0 0 0 0 0 0 0 0 0 0;
0 0 0 0 0 1*cosd(27) -1*sind(63) 1*sind(27) 0 0 0 0 0 0 0 0;
0 0 0 0 0 1*sind(27) -1*cosd(63) -1*cosd(27) 0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 -1*cosd(63) -1 1 -1*cosd(54) 0 0 0 0 0;
0 0 0 0 0 0 0 +1*sind(63) 0 0 +1*sind(54) 0 0 0 0 0;
0 0 0 1*cosd(27) 0 0 0 0 0 0 0 -1*sind(64) 1*cosd(63)  0 0 0;
0 0 0 1*sind(27) 0 0 0 0 0 0 0 -1*cosd(64) -1*sind(63)  0 0 0;
0 0 0 0 1 0 0 0 0 -1 0 0 0 -1*cosd(63) 0 1*cosd(53);
0 0 0 0 0 0 0 0 0 0 0 0 0 1*sind(63) 0 1*sind(53);
0 0 0 0 0 -1*cosd(63) 0 0 0 0 1*cosd(90) 1*cosd(26) 0 1*cosd(64) 1 0;
0 0 0 0 0 -1*sind(63) 0 0 0 0 -1*cosd(90) 1*sind(26) 0 -1*sind(64) 0 0;
0 0 -1*cosd(52) 0 0 0 0 0 0 0 0 0 -1*cosd(64) 0 -1 -1*cosd(52);
0 0  1*sind(52) 0 0 0 0 0 0 0 0 0 1*sind(64) 0 0 -1*sind(52)];   % all 16 equations

z = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
P;
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
P; 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
P;
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
            %our matrix which will have different values every time due
            %varying value of P, c, D , e which are nothing but external
            %load and member forces respectively.
n = [x z];                           %Augmented Matrix
m = rref(n)

