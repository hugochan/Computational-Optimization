%% objective function
function rst = func(x)
    a=1;
    b = 0.1266514795529223;
    c = 1.591549430918954;
    d = 6;
    e = 10;
    f = 0.0397887357729738;
    rst = a*(x(2)-b*x(1)^2+c*x(1)-d)^2+e*(1-f)*cos(x(1))+e;
end