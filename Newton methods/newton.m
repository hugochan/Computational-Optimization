%Newton's descent algorithm with bisection linesearch
function [xstar, xk] =newton(xzero,xh,xl,n,kmax,tol,grad,hess)
  x=xzero;
  for k=1:kmax
      xk(k,:)=x;
      g=grad(x);
      if(norm(g) <= tol) break; end
      H=hess(x);
      [U,p]=chol(H)
      y=U'\(-g);
      d=U\y;
      alpha=bls(x,d,xh,xl,n,grad);
      x=x+alpha*d;    
  end
  xstar=x;
  fprintf('#iter:%d\n', k);
  fprintf('norm of g:%f', norm(g));
end
