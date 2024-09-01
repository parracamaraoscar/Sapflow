
%% Codigo para calcular HV
 % Oscar Parra Cámara
 
%%
clc;
clear all;

data=xlsread('Promediar_Divisiones.xlsx', 'Hoja1'); 
Promediar=data(:,3);
Division1=data(:,4);
Division2=data(:,5);
Division3=data(:,6);
Division4=data(:,7);
Division5=data(:,8);
Division6=data(:,9);
Division7=data(:,10);
Division8=data(:,11);
Division9=data(:,12);
Division10=data(:,13);
Division11=data(:,14);
Division12=data(:,15);
Division13=data(:,16);
Division14=data(:,17);

%% Promedio cada 21 Segundos

% Loop para promediar
startd=1; %Que numero inicia
endd=144; %Que numero termina
vector_3=startd:1:endd;

for i=1:length(vector_3) %LOOP
   
    dindex_3=find(vector_3(i)==Promediar);
    
   vec1=Division1(dindex_3); 
   vec2=Division2(dindex_3);
   vec3=Division3(dindex_3);
   vec4=Division4(dindex_3);
   vec5=Division5(dindex_3);
   vec6=Division6(dindex_3);
   vec7=Division7(dindex_3);
   vec8=Division8(dindex_3);
   vec9=Division9(dindex_3);
   vec10=Division10(dindex_3);
   vec11=Division11(dindex_3);
   vec12=Division12(dindex_3);
   vec13=Division13(dindex_3);
   vec14=Division14(dindex_3);
   
   Promedio1_S1(i)=nanmean(vec1);
   Promedio2_S2(i)=nanmean(vec2); 
   Promedio3_S3(i)=nanmean(vec3); 
   Promedio4_S4(i)=nanmean(vec4); 
   Promedio5_S5(i)=nanmean(vec5);
   Promedio6_S6(i)=nanmean(vec6);
   Promedio7_S7(i)=nanmean(vec7);
   Promedio8_S8(i)=nanmean(vec8);
   Promedio9_S9(i)=nanmean(vec9);
   Promedio10_S10(i)=nanmean(vec10);
   Promedio11_S11(i)=nanmean(vec11);
   Promedio12_S12(i)=nanmean(vec12);
   Promedio13_S13(i)=nanmean(vec13);
   Promedio14_S14(i)=nanmean(vec14);
   
   
end

%% Calcular Heat Velocity (Vh)

tm=30; %Tiempo donde se alcabza la maxima temperatura (seg)
x=0.6; %Distancia arriba y abajo (cm)
k=(x^2)/(4*tm); %Difusividad termica (cm2/seg)
%Ecuacion de Heat velocity (cm/s): Vh=(k/x)*ln(?T1/?T2)

Vh1_S1=((k/x)*(log(abs(Promedio1_S1))))';
Vh2_S2=((k/x)*(log(abs(Promedio2_S2))))';
Vh3_S3=((k/x)*(log(abs(Promedio3_S3))))';
Vh4_S4=((k/x)*(log(abs(Promedio4_S4))))';
Vh5_S5=((k/x)*(log(abs(Promedio5_S5))))';
Vh6_S6=((k/x)*(log(abs(Promedio6_S6))))';
Vh7_S7=((k/x)*(log(abs(Promedio7_S7))))';
Vh8_S8=((k/x)*(log(abs(Promedio8_S8))))';
Vh9_S9=((k/x)*(log(abs(Promedio9_S9))))';
Vh10_S10=((k/x)*(log(abs(Promedio10_S10))))';
Vh11_S11=((k/x)*(log(abs(Promedio11_S11))))';
Vh12_S12=((k/x)*(log(abs(Promedio12_S12))))';
Vh13_S13=((k/x)*(log(abs(Promedio13_S13))))';
Vh14_S14=((k/x)*(log(abs(Promedio14_S14))))';

%% Hacer tabla con los datos

zTabla_Datos= [Vh1_S1 Vh2_S2 Vh3_S3 Vh4_S4 Vh5_S5 Vh6_S6 Vh7_S7 Vh8_S8 Vh9_S9 Vh10_S10 Vh11_S11 Vh12_S12 Vh13_S13 Vh14_S14];
