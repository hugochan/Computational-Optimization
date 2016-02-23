% deduce high and low limits on alpha from bounds on x

function [al,ah]=arange(x,d,xh,xl,n)
  al=-realmax;
  ah=+realmax;
  for j=1:n
      if(d(j) == 0) continue; end
      tl=(xl(j)-x(j))/d(j);
      th=(xh(j)-x(j))/d(j);
      v=min(tl,th);
      u=max(tl,th);
      al=max(al,v);
      ah=min(ah,u);
  end
end
