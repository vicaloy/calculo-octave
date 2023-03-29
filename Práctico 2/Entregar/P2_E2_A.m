%Algoritmo búsqueda incremental
%ejecutar: func=@(x) log(x.^4) - 0.7;
%ejecutar: P2_E2_A(func, -50, 50, 1000)
% -1.2513  -1.1512
%  1.1512   1.2513
clc
disp('Ejecutando..')
function xb = P2_E2_A(func, xmin, xmax, ns)
  %incsearch(func, xmin, xmax, ns):
  %finds brackets of x that contain sign changes of a function on an interval
  %input:
  % func = name of function
  % xmin, xmax = endpoints of interval
  % ns= (optional) number of subintervals along x used to search for brakets
  %output:
  % xb(k, 1) is the lower bound of the kth sign change
  % xb(k, 2) is the upper bound of the kth sign change
  % If no brackets found, xb = []

  if nargin < 4, ns=50; end %if ns blank set to 50
  
  %Incremental search
  x=linspace(xmin, xmax, ns);
  f= feval(func, x);
  nb=0;
  xb=[]; %xb is null unless sign change detected
  for k=1:length(x)-1
    if sign(f(k)) ~= sign(f(k+1)) %check for sign change
      nb=nb+1;
      xb(nb, 1)= x(k);
      xb(nb, 2)= x(k+1);
    endif
  endfor
  
  if isempty(xb) %display that no brackets were found
    disp('no brackets were found')
    disp('no intervals or increase ns')
  else
    disp('number of brackets: ') %display number of brackets
    disp(nb)
  end
endfunction