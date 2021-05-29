format rat
for nth=1:128
    xy=[];
    for n=1:nth+1
        xy=[xy;n,abs(cosk(nth,nth-2+2*n))];
    end
    xy=sym(xy);
    x=xy(:,1);
    y=xy(:,2);
    N=length(x);
    p=[];
    for m=1:N
        q=[];
        for n=1:N
            q=[q,x(m)^(N-n)];
        end
        p=[p;q];
    end
    ans=inv(p)*y
end