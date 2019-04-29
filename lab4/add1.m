function a=add1(p,q)
p=[p,zeros(1,1)];
vec=(length(p)-length(q));
    q=[zeros(1,abs(vec)),q];
a=p+q;
end
