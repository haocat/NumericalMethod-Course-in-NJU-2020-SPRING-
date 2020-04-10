A=[1,1,0.5;1.0,1.0,0.25;0.5,0.25,2.0];
eps=1e-10;n=10000;x0=ones(3,1);
[lamda,x]=mifa(A,eps,n);
fprintf("--------幂法计算的主特征值--------\n");
disp(lamda);
fprintf("--------该特征值对应的特征向量--------\n");
disp(x);
fprintf("--------调用eig函数得到的特征值--------\n");
lamda_example=eig(A)




