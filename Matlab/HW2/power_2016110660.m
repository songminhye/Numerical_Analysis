function [ eig_val, eig_vec ] = power_2016110660(A,es,maxit )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


[m,n]= size(A);
if m~=n, error('Matrix A must be square'); end

C = transpose(A);
tf = isequal(A,C);
if tf == 0, error('Matrix A must be symmetric'); end

size2 = input('큰 eigenvalue, 작은 eigenvalue 골라주세요. (big,small)\n','s');

iter = 0;
u = ones(m,1);

B = A^(-1);


switch size2

    case 'big'
        eig1 = A*u; % eig1 => eigvec
        while(1)
        
        eig_old = eig1;
        
        if(max(eig1) == max(abs(eig1)))
             eigval_old = max(abs(eig1)); 
         elseif (max(eig1) ~= max(abs(eig1)))
             eigval_old = -max(abs(eig1));
        end
                 
        eig1 = eig_old./eigval_old;
        eig1 = A*eig1;
        
        
        
        if(max(eig1) == max(abs(eig1)))
             eigval = max(abs(eig1)); 
         elseif (max(eig1) ~= max(abs(eig1)))
             eigval = -max(abs(eig1));
        end
        
        
        
        iter = iter +1;
        ea = abs((eigval-eigval_old)/eigval)*100;
         if eig1 == eig_old, break, end
       if ea <= es || iter >= maxit, break, end
      
        end
        
        eig_val = eigval;
        eig_vec = eig1./eig_val;
               
        
    case 'small'
        eig1 = B*u;
        while(1)
        
        eig_old = eig1;
        
        if(max(eig1) == max(abs(eig1)))
             eigval_old = max(abs(eig1)); 
         elseif (max(eig1) ~= max(abs(eig1)))
             eigval_old = -max(abs(eig1));
        end
                 
        eig1 = eig_old./eigval_old;
        eig1 = B*eig1;
        
        
        
        if(max(eig1) == max(abs(eig1)))
             eigval = max(abs(eig1)); 
         elseif (max(eig1) ~= max(abs(eig1)))
             eigval = -max(abs(eig1));
        end
        
        
        
        iter = iter +1;
        ea = abs((eigval-eigval_old)/eigval)*100;
        if eig1 == eig_old, break, end
       if ea <= es || iter >= maxit, break, end
       
        end
        
        eig_val = 1/eigval;
        eig_vec = eig1./eigval;
        
             
        
        
end      


end

