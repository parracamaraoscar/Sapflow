
%% Codigo Extraccion de datos
 % Oscar Parra Cámara

%% Cargar Base de datos
clc;
clear all;

data = xlsread('Data_Sapflow.xlsx','18Mar');
xlsdate = data(:,1);
matdate = xlsdate + 693960;                 % Date in matlab format

%% Rows of interest to be extracted from dataset
i = (20:40)';                               % Original row ID to be extracted
n = 144;                                    % Number of 10-minute periods within a day
szA = size(i); 
y = reshape(repmat(i,n,1),szA(1),n*szA(2)); % Repeat Row ID n times
x = reshape(y,[3024,1]);                    % Reshape matrix 21 x 144= 3024

%% Row ID to be extracted within original data
k = 199;                                    % Number of collected data within a 10-minute period
b=(0:143)';                                 % Index
r=repmat(b,1,szA(1))';
r=r(:);                                     % Multiplier

%% Matrix with data of interest
w = x+(r.*k);                               % Index for extraction
A = data(w,:);                              % Final dataset
% transformar a fecha datevec(matdate)

%% Cargar columnas 

Temp1_S1=A(:,3);  
Temp2_S1=A(:,4);  
Temp3_S2=A(:,5);  
Temp4_S2=A(:,6); 
Temp5_S3=A(:,7);  
Temp6_S3=A(:,8);  
Temp7_S4=A(:,9); 
Temp8_S4=A(:,10); 
Temp9_S5=A(:,11); 
Temp10_S5=A(:,12);  
Temp11_S6=A(:,13);  
Temp12_S6=A(:,14);  
Temp13_S7=A(:,15);  
Temp14_S7=A(:,16); 
Temp15_S8=A(:,17); 
Temp16_S8=A(:,18); 
Temp17_S9=A(:,19); 
Temp18_S9=A(:,20); 
Temp19_S10=A(:,21); 
Temp20_S10=A(:,22); 
Temp21_S11=A(:,23); 
Temp22_S11=A(:,24); 
Temp23_S12=A(:,25); 
Temp24_S12=A(:,26); 
Temp25_S13=A(:,27); %Sensor 13
Temp26_S13=A(:,28); %Sensor 13
Temp27_S14=A(:,29); 
Temp28_S14=A(:,30); 

%% Dividir
Division1_S1=Temp2_S1./Temp1_S1;
Division2_S2=Temp4_S2./Temp3_S2;
Division3_S3=Temp6_S3./Temp5_S3;
Division4_S4=Temp8_S4./Temp7_S4;
Division5_S5=Temp10_S5./Temp9_S5;
Division6_S6=Temp12_S6./Temp11_S6;
Division7_S7=Temp14_S7./Temp13_S7;
Division8_S8=Temp16_S8./Temp15_S8;
Division9_S9=Temp18_S9./Temp17_S9;
Division10_S10=Temp20_S10./Temp19_S10;
Division11_S11=Temp22_S11./Temp21_S11;
Division12_S12=Temp24_S12./Temp23_S12;
Division13_S13=Temp26_S13./Temp25_S13;
Division14_S14=Temp28_S14./Temp27_S14;

zTabla=[Division1_S1 Division2_S2 Division3_S3 Division4_S4 Division5_S5 Division6_S6 Division7_S7 Division8_S8 Division9_S9...
        Division10_S10 Division11_S11 Division12_S12 Division13_S13 Division14_S14];