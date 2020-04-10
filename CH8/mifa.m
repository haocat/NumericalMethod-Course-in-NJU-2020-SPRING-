
%lamda：幂法计算得到的主特征值
%x：规范化的特征向量
%A：矩阵
%eps：误差限
%N：迭代上限次数
function [lamda,x]=mifa(A,eps,N)
    time=1;%当前迭代次数
    lamda=0;
    x0=ones(length(A),1);
    x=A*x0;
    [temp,index]=max(abs(x));
    temp=x(index);
    x=x/x(index);%规范化向量
    while(time<N)%幂法迭代
        if(abs(temp-lamda)<eps)
               break;
        end
        lamda=temp;
        x=A*x;
        time=time+1;
        [temp,index]=max(abs(x));
        temp=x(index);
        x=x/x(index);
    end
if(time>=N)
    fprintf("Sorry，迭代次数达到上限，无法保证结果在误差范围内-\n");
end
lamda=temp;






    