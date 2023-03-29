function x = conjgrad(A,b,tol)

   fprintf('iter\t\t x \t\t\t r \t\t err \t\t Ax\n');
    if nargin<3
        tol=0.0001;
    end
    x = b;
    r = b - A*x;
    if norm(r) < tol
        return
    end
    p = -r;
    z = A*p;
    s = p'*z;
    alfa = (r'*p)/s;
    x = x + alfa*p;
  
    for k = 1:numel(b);
      
       r = r - alfa*z;
       if( norm(r) < tol )
            return;
       end
       B = (r'*z)/s;
       p = -r + B*p;
       z = A*p;
       s = p'*z;
       alfa = (r'*p)/s;
       x = x + alfa*p;
       E=A*x;
       fprintf('\n--------------------------------------------------------------------------------------\n');
       fprintf('%3d \t\t%6.4f \t\t%6.4f \t\t%6.4f \t\t%6.4f\n', k, x(1), r(1), norm(r), E(1));
       fprintf('%3d \t\t%6.4f \t\t%6.4f \t\t%6.4f \t\t%6.4f\n', k, x(2), r(2), norm(r), E(2));
       fprintf('%3d \t\t%6.4f \t\t%6.4f \t\t%6.4f \t\t%6.4f\n', k, x(3), r(3), norm(r), E(3));
       
       
    end
 end