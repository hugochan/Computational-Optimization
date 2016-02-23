function [astar,a]=bls(xk,dk,xh,xl,n,grad)
%% bisection line search
% xk = starting point
% dk = direction
% xh = maximum values for x
% xl = minimum values for x
% n  = dimensionality of space
% grad = function to compute gradient
% returns  astar = solution
%          a = values tried
%% parameter of the algorithm
  tol=1e-8;          % convergence tolerance
  maxiter = 30;     % maximum iteration
  [al,ah]=arange(xk,dk,xh,xl,n)   % compute range of a
%%  Do search
  for kk=1:maxiter;
      alpha=(al+ah)/2;            % bisect
      x=xk+alpha*dk;              % take step
      a(kk)=alpha;                % save result
      g=grad(x);                  % compute gradient
      fp=dk'*g;                   % compute directional derivative
      if(abs(fp) < tol) break; end  % check tolerance
      if(fp < 0)                  % pick interval to keep
         al=alpha;
      else
         ah=alpha;
      end
  end
  astar=alpha;                    % return solution
end
