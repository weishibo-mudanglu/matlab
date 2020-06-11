%%
subplot(3,2,1)
hold on;
plot(countrydata1{1:132,1},countrydata1{1:132,2},'--')
plot(countrydata1{1:132,1},countrydata1{1:132,4},'*')
plot(countrydata1{1:132,1},countrydata1{1:132,9},'.')
plot(countrydata1{1:132,1},countrydata1{1:132,6})
legend('感染总人数','治愈总人数','死亡总人数','现存感染人数') %可依次设置成你想要的名字
hold off;
title('美国总感染人数、治愈人数、死亡人数，现存感染人数')
subplot(3,2,2)
hold on;
plot(countrydata1{1:132,1},countrydata1{1:132,3},'--')
plot(countrydata1{1:132,1},countrydata1{1:132,5},'*')
plot(countrydata1{1:132,1},countrydata1{1:132,10},'.')
plot(countrydata1{1:132,1},countrydata1{1:132,7})
legend('每日感染人数','每日治愈人数','每日死亡人数','每日感染人数变化')
title('美国每日感染、治愈、死亡增长数，现存感染人数变化')
hold off;
subplot(3,2,3)
hold on;
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,2},'--')
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,4},'*')
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,9},'.')
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,6})
legend('感染总人数','治愈总人数','死亡总人数','现存感染人数') %可依次设置成你想要的名字
hold off;
title('中国总感染人数、治愈人数、死亡人数，现存感染人数')
subplot(3,2,4)
hold on;
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,3},'--')
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,5},'*')
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,10},'.')
plot(countrydata1{13670:13850,1}-13669,countrydata1{13670:13850,7})
legend('每日感染人数','每日治愈人数','每日死亡人数','每日感染人数变化')
title('中国每日感染、治愈、死亡增长数，现存感染人数变化')
hold off;
subplot(3,2,5)
hold on;
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,2},'--')
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,4},'*')
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,9},'.')
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,6})
legend('感染总人数','治愈总人数','死亡总人数','现存感染人数') %可依次设置成你想要的名字
hold off;
title('日本钻石公主号总感染人数、治愈人数、死亡人数，现存感染人数')
subplot(3,2,6)
hold on;
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,3},'--')
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,5},'*')
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,10},'.')
plot(countrydata1{13969:14068,1}-13969,countrydata1{13969:14068,7})
legend('每日感染人数','每日治愈人数','每日死亡人数','每日感染人数变化')
title('日本钻石公主号每日感染、治愈、死亡增长数，现存感染人数变化')
hold off;
%%
subplot(3,2,1)
hold on;
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,2},'--')
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,4},'*')
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,9},'.')
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,6})
legend('感染总人数','治愈总人数','死亡总人数','现存感染人数') %可依次设置成你想要的名字
hold off;
title('湖北省总感染人数、治愈人数、死亡人数，现存感染人数')
subplot(3,2,2)
hold on;
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,3},'--')
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,5},'*')
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,10},'.')
plot(chinaprovincedata{1071:1201,1}-1071,chinaprovincedata{1071:1201,7})
legend('每日感染人数','每日治愈人数','每日死亡人数','每日感染人数变化')
title('湖北省每日感染、治愈、死亡增长数，现存感染人数变化')
hold off;
%% SEIR模型仿真部分
%--------------------------------------------------------------------------
%   初始化
%--------------------------------------------------------------------------
clear;clc;

%--------------------------------------------------------------------------
%   参数设置
%--------------------------------------------------------------------------
N = 10000;                                                                  %人口总数
E = 0;                                                                      %潜伏者
I = 1;                                                                      %传染者
S = N - I;                                                                  %易感者
R = 0;                                                                      %康复者

r = 10;                                                                      %感染者接触易感者的人数
B = 0.03;                                                                   %传染概率
a = 0.1;                                                                    %潜伏者转化为感染者概率
r2 = 20;                                                                    %潜伏者接触易感者的人数
B2 = 0.035;                                                                  %潜伏者传染正常人的概率
y = 0.1;                                                                    %康复概率

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
xlabel('天');ylabel('人数')
legend('易感者','潜伏者','传染者','康复者')