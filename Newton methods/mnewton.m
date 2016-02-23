% modified Newton's descent algorithm
function [xstar, xk] = mnewton(xzero,xh,xl,n,kmax,tol,grad,hess)
  x=xzero;
  for k=1:kmax
      xk(k,:)=x;
      g=grad(x);
      if(norm(g) <= tol) break; end
      H=hess(x);
      [U,p]=chol(H)
      while(p ~= 0)
        H=H+0.5*eye(n);
        [U,p]=chol(H);
      end
      y=U'\(-g);
      d=U\y;
      alpha=bls(x,d,xh,xl,n,grad);
      x=x+alpha*d;    
  end
  xstar=x;
  fprintf('#iter:%d\n', k);
  fprintf('norm of g:%f', norm(g));
end
