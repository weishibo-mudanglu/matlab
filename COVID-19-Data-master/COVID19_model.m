%%
subplot(3,2,1)
hold on;
plot(countrydata1{1:132,1},countrydata1{1:132,2},'--')
plot(countrydata1{1:132,1},countrydata1{1:132,4},'*')
plot(countrydata1{1:132,1},countrydata1{1:132,9},'.')
plot(countrydata1{1:132,1},countrydata1{1:132,6})
legend('��Ⱦ������','����������','����������','�ִ��Ⱦ����') %���������ó�����Ҫ������
hold off;
title('�����ܸ�Ⱦ���������������������������ִ��Ⱦ����')
subplot(3,2,2)
hold on;
plot(countrydata1{1:132,1},countrydata1{1:132,3},'--')
plot(countrydata1{1:132,1},countrydata1{1:132,5},'*')
plot(countrydata1{1:132,1},countrydata1{1:132,10},'.')
plot(countrydata1{1:132,1},countrydata1{1:132,7})
legend('ÿ�ո�Ⱦ����','ÿ����������','ÿ����������','ÿ�ո�Ⱦ�����仯')
title('����ÿ�ո�Ⱦ���������������������ִ��Ⱦ�����仯')
hold off;
subplot(3,2,3)
hold on;
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,2},'--')
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,4},'*')
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,9},'.')
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,6})
legend('��Ⱦ������','����������','����������','�ִ��Ⱦ����') %���������ó�����Ҫ������
hold off;
title('�й��ܸ�Ⱦ���������������������������ִ��Ⱦ����')
subplot(3,2,4)
hold on;
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,3},'--')
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,5},'*')
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,10},'.')
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,7})
legend('ÿ�ո�Ⱦ����','ÿ����������','ÿ����������','ÿ�ո�Ⱦ�����仯')
title('�й�ÿ�ո�Ⱦ���������������������ִ��Ⱦ�����仯')
hold off;
subplot(3,2,5)
hold on;
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,2},'--')
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,4},'*')
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,9},'.')
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,6})
legend('��Ⱦ������','����������','����������','�ִ��Ⱦ����') %���������ó�����Ҫ������
hold off;
title('�ձ���ʯ�������ܸ�Ⱦ���������������������������ִ��Ⱦ����')
subplot(3,2,6)
hold on;
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,3},'--')
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,5},'*')
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,10},'.')
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,7})
legend('ÿ�ո�Ⱦ����','ÿ����������','ÿ����������','ÿ�ո�Ⱦ�����仯')
title('�ձ���ʯ������ÿ�ո�Ⱦ���������������������ִ��Ⱦ�����仯')
hold off;
%%
subplot(3,2,1)
hold on;
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,2},'--')
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,4},'*')
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,9},'.')
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,6})
legend('��Ⱦ������','����������','����������','�ִ��Ⱦ����') %���������ó�����Ҫ������
hold off;
title('����ʡ�ܸ�Ⱦ���������������������������ִ��Ⱦ����')
subplot(3,2,2)
hold on;
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,3},'--')
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,5},'*')
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,10},'.')
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,7})
legend('ÿ�ո�Ⱦ����','ÿ����������','ÿ����������','ÿ�ո�Ⱦ�����仯')
title('����ʡÿ�ո�Ⱦ���������������������ִ��Ⱦ�����仯')
hold off;
%% SEIRģ�ͷ��沿��
%--------------------------------------------------------------------------
%   ��ʼ��
%--------------------------------------------------------------------------
clear;clc;

%--------------------------------------------------------------------------
%   ��������
%--------------------------------------------------------------------------
N = 10000;                                                                  %�˿�����
E = 0;                                                                      %Ǳ����
I = 1;                                                                      %��Ⱦ��
S = N - I;                                                                  %�׸���
R = 0;                                                                      %������

r = 10;                                                                      %��Ⱦ�߽Ӵ��׸��ߵ�����
B = 0.03;                                                                   %��Ⱦ����
a = 0.1;                                                                    %Ǳ����ת��Ϊ��Ⱦ�߸���
r2 = 20;                                                                    %Ǳ���߽Ӵ��׸��ߵ�����
B2 = 0.035;                                                                  %Ǳ���ߴ�Ⱦ�����˵ĸ���
y = 0.1;                                                                    %��������

T = 1:140;
for idx = 1:length(T)-1
    S(idx+1) = S(idx) - r*B*S(idx)*I(idx)/N(1) - r2*B2*S(idx)*E(idx)/N;
    E(idx+1) = E(idx) + r*B*S(idx)*I(idx)/N(1)-a*E(idx) + r2*B2*S(idx)*E(idx)/N;
    I(idx+1) = I(idx) + a*E(idx) - y*I(idx);
    R(idx+1) = R(idx) + y*I(idx);
    if(idx==25)
        r = 2;
        r2 = 10;
        B = 0.25;
        B2 = 0.3;
    end
    if(idx==60)
        r = 2;
        r2 = 15;
        B = 0.22;
        B2 = 0.35;
    end
end

plot(T,S,T,E,T,I,T,R);grid on;
xlabel('��');ylabel('����')
legend('�׸���','Ǳ����','��Ⱦ��','������')