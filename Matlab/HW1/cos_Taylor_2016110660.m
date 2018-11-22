function m = cos_Taylor_2016110660( x,a,n )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


m = Taylor(x,a,n);
plot(x,m,'r:o','Linewidth',4),grid
axis([0 1.6 0 1])

 

end

function sol = Taylor(t,a,n)

s = [cos(a) -sin(a) -cos(a) sin(a)]; % cos(a)의 미분
sol = cos(a);
b = 2;
        
 for k = 1:n
     solold = sol;
     sol = solold + (s(b)/factorial(k))*(t-a).^k; %Taylor function  
     b = b+1; % 미분반복 
     
     if b==4
         b = 1;
     end
 end
 
 
end

