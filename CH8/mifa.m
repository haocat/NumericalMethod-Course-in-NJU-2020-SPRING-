
%lamda���ݷ�����õ���������ֵ
%x���淶������������
%A������
%eps�������
%N���������޴���
function [lamda,x]=mifa(A,eps,N)
    time=1;%��ǰ��������
    lamda=0;
    x0=ones(length(A),1);
    x=A*x0;
    [temp,index]=max(abs(x));
    temp=x(index);
    x=x/x(index);%�淶������
    while(time<N)%�ݷ�����
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
    fprintf("Sorry�����������ﵽ���ޣ��޷���֤�������Χ��-\n");
end
lamda=temp;






    