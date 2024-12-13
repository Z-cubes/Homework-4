close all
clear all
clc

% load data (both observed and modeled) 
Observed_Monthly_1961to2005_Mean_Temperature_Data = readmatrix("(1961-2005) Observed Mean Temperature Data.csv");
Observed_Monthly_1961to2005_Precipitation_Data = readmatrix("(1961-2005) Observed Precipitation Data.csv");
Model_Monthly_1961to2005_Precipitation_Data = readmatrix("(1961-2005) Model Precipitation Data.csv");
Model_Monthly_1961to2005_Temperatures_Data = readmatrix("(1961-2005) Model Temperatures Data.csv");
Model_Monthly_2006to2050_Precipitation_Data = readmatrix("(2006-2050) Model Precipitation Data.csv");
Model_Monthly_2006to2050_Temperatures_Data = readmatrix("(2006-2050) Model Temperatures Data.csv");
Model_Monthly_2051to2095_Precipitation_Data = readmatrix("(2051-2095) Model Precipitation Data.csv");
Model_Monthly_2051to2095_Temperatures_Data = readmatrix("(2051-2095) Model Temperatures Data.csv");

% Assign data, note units

    % historical 1961 2005
Observed_Monthly_1961to2005_Mean_Temperature_Data = Observed_Monthly_1961to2005_Mean_Temperature_Data(2:541,2); % deg C
% deg C
        % Convet deg C to Kelvin 
Observed_Monthly_1961to2005_Mean_Temperature_Data = Observed_Monthly_1961to2005_Mean_Temperature_Data + 273.15; % K

Observed_Monthly_1961to2005_Precipitation_Data = Observed_Monthly_1961to2005_Precipitation_Data(2:541,2); % mm

China_Model_Monthly_1961to2005_Precipitation_Data = Model_Monthly_1961to2005_Precipitation_Data(1:540,2); % mm
France_Model_Monthly_1961to2005_Precipitation_Data = Model_Monthly_1961to2005_Precipitation_Data(1:540,3); % mm
Russia_Model_Monthly_1961to2005_Precipitation_Data = Model_Monthly_1961to2005_Precipitation_Data(1:540,4); % mm
Japan_Model_Monthly_1961to2005_Precipitation_Data = Model_Monthly_1961to2005_Precipitation_Data(1:540,5); % mm
Norway_Model_Monthly_1961to2005_Precipitation_Data = Model_Monthly_1961to2005_Precipitation_Data(1:540,6); % mm

China_Model_Monthly_1961to2005_Max_Temperature_Data = Model_Monthly_1961to2005_Temperatures_Data(1:540,2); % K
China_Model_Monthly_1961to2005_Min_Temperature_Data = Model_Monthly_1961to2005_Temperatures_Data(1:540,3); % K
France_Model_Monthly_1961to2005_Max_Temperature_Data = Model_Monthly_1961to2005_Temperatures_Data(1:540,4); % K
France_Model_Monthly_1961to2005_Min_Temperature_Data = Model_Monthly_1961to2005_Temperatures_Data(1:540,5); % K
Russia_Model_Monthly_1961to2005_Max_Temperature_Data = Model_Monthly_1961to2005_Temperatures_Data(1:540,6); % K
Russia_Model_Monthly_1961to2005_Min_Temperature_Data = Model_Monthly_1961to2005_Temperatures_Data(1:540,7); % K
Japan_Model_Monthly_1961to2005_Max_Temperature_Data = Model_Monthly_1961to2005_Temperatures_Data(1:540,8); % K
Japan_Model_Monthly_1961to2005_Min_Temperature_Data = Model_Monthly_1961to2005_Temperatures_Data(1:540,9); % K
Norway_Model_Monthly_1961to2005_Max_Temperature_Data = Model_Monthly_1961to2005_Temperatures_Data(1:540,10); % K
Norway_Model_Monthly_1961to2005_Min_Temperature_Data = Model_Monthly_1961to2005_Temperatures_Data(1:540,11); % K

    % Future 2006 to 2050
China_Model_Monthly_2006to2050_Precipitation_Data = Model_Monthly_2006to2050_Precipitation_Data(1:540,2); % mm
France_Model_Monthly_2006to2050_Precipitation_Data = Model_Monthly_2006to2050_Precipitation_Data(1:540,3); % mm
Russia_Model_Monthly_2006to2050_Precipitation_Data = Model_Monthly_2006to2050_Precipitation_Data(1:540,4); % mm
Japan_Model_Monthly_2006to2050_Precipitation_Data = Model_Monthly_2006to2050_Precipitation_Data(1:540,5); % mm
Norway_Model_Monthly_2006to2050_Precipitation_Data = Model_Monthly_2006to2050_Precipitation_Data(1:540,6); % mm

China_Model_Monthly_2006to2050_Max_Temperature_Data = Model_Monthly_2006to2050_Temperatures_Data(1:540,2); % K
China_Model_Monthly_2006to2050_Min_Temperature_Data = Model_Monthly_2006to2050_Temperatures_Data(1:540,3); % K
France_Model_Monthly_2006to2050_Max_Temperature_Data = Model_Monthly_2006to2050_Temperatures_Data(1:540,4); % K
France_Model_Monthly_2006to2050_Min_Temperature_Data = Model_Monthly_2006to2050_Temperatures_Data(1:540,5); % K
Russia_Model_Monthly_2006to2050_Max_Temperature_Data = Model_Monthly_2006to2050_Temperatures_Data(1:540,6); % K
Russia_Model_Monthly_2006to2050_Min_Temperature_Data = Model_Monthly_2006to2050_Temperatures_Data(1:540,7); % K
Japan_Model_Monthly_2006to2050_Max_Temperature_Data = Model_Monthly_2006to2050_Temperatures_Data(1:540,8); % K
Japan_Model_Monthly_2006to2050_Min_Temperature_Data = Model_Monthly_2006to2050_Temperatures_Data(1:540,9); % K
Norway_Model_Monthly_2006to2050_Max_Temperature_Data = Model_Monthly_2006to2050_Temperatures_Data(1:540,10); % K
Norway_Model_Monthly_2006to2050_Min_Temperature_Data = Model_Monthly_2006to2050_Temperatures_Data(1:540,11); % K

    % Future 2051 to 2095
China_Model_Monthly_2051to2095_Precipitation_Data = Model_Monthly_2051to2095_Precipitation_Data(1:540,2); % mm
France_Model_Monthly_2051to2095_Precipitation_Data = Model_Monthly_2051to2095_Precipitation_Data(1:540,3); % mm
Russia_Model_Monthly_2051to2095_Precipitation_Data = Model_Monthly_2051to2095_Precipitation_Data(1:540,4); % mm
Japan_Model_Monthly_2051to2095_Precipitation_Data = Model_Monthly_2051to2095_Precipitation_Data(1:540,5); % mm
Norway_Model_Monthly_2051to2095_Precipitation_Data = Model_Monthly_2051to2095_Precipitation_Data(1:540,6); % mm

China_Model_Monthly_2051to2095_Max_Temperature_Data = Model_Monthly_2051to2095_Temperatures_Data(1:540,2); % K
China_Model_Monthly_2051to2095_Min_Temperature_Data = Model_Monthly_2051to2095_Temperatures_Data(1:540,3); % K
France_Model_Monthly_2051to2095_Max_Temperature_Data = Model_Monthly_2051to2095_Temperatures_Data(1:540,4); % K
France_Model_Monthly_2051to2095_Min_Temperature_Data = Model_Monthly_2051to2095_Temperatures_Data(1:540,5); % K
Russia_Model_Monthly_2051to2095_Max_Temperature_Data = Model_Monthly_2051to2095_Temperatures_Data(1:540,6); % K
Russia_Model_Monthly_2051to2095_Min_Temperature_Data = Model_Monthly_2051to2095_Temperatures_Data(1:540,7); % K
Japan_Model_Monthly_2051to2095_Max_Temperature_Data = Model_Monthly_2051to2095_Temperatures_Data(1:540,8); % K
Japan_Model_Monthly_2051to2095_Min_Temperature_Data = Model_Monthly_2051to2095_Temperatures_Data(1:540,9); % K
Norway_Model_Monthly_2051to2095_Max_Temperature_Data = Model_Monthly_2051to2095_Temperatures_Data(1:540,10); % K
Norway_Model_Monthly_2051to2095_Min_Temperature_Data = Model_Monthly_2051to2095_Temperatures_Data(1:540,11); % K

% Calculate Tmean = (Tmin + Tmax)/2, note units 
    
    % historical
China_Model_Monthly_1961to2005_Mean_Temperature_Data = (China_Model_Monthly_1961to2005_Min_Temperature_Data + China_Model_Monthly_1961to2005_Max_Temperature_Data) / 2; % K
France_Model_Monthly_1961to2005_Mean_Temperature_Data = (France_Model_Monthly_1961to2005_Min_Temperature_Data + France_Model_Monthly_1961to2005_Max_Temperature_Data) / 2; % K
Russia_Model_Monthly_1961to2005_Mean_Temperature_Data = (Russia_Model_Monthly_1961to2005_Min_Temperature_Data + Russia_Model_Monthly_1961to2005_Max_Temperature_Data) / 2; % K
Japan_Model_Monthly_1961to2005_Mean_Temperature_Data = (Japan_Model_Monthly_1961to2005_Min_Temperature_Data + Japan_Model_Monthly_1961to2005_Max_Temperature_Data) / 2; % K
Norway_Model_Monthly_1961to2005_Mean_Temperature_Data = (Norway_Model_Monthly_1961to2005_Min_Temperature_Data + Norway_Model_Monthly_1961to2005_Max_Temperature_Data) / 2; % K

    % Future 2006 to 2050
China_Model_Monthly_2006to2050_Mean_Temperature_Data = (China_Model_Monthly_2006to2050_Min_Temperature_Data + China_Model_Monthly_2006to2050_Max_Temperature_Data) / 2; % K
France_Model_Monthly_2006to2050_Mean_Temperature_Data = (France_Model_Monthly_2006to2050_Min_Temperature_Data + France_Model_Monthly_2006to2050_Max_Temperature_Data) / 2; % K
Russia_Model_Monthly_2006to2050_Mean_Temperature_Data = (Russia_Model_Monthly_2006to2050_Min_Temperature_Data + Russia_Model_Monthly_2006to2050_Max_Temperature_Data) / 2; % K
Japan_Model_Monthly_2006to2050_Mean_Temperature_Data = (Japan_Model_Monthly_2006to2050_Min_Temperature_Data + Japan_Model_Monthly_2006to2050_Max_Temperature_Data) / 2; % K
Norway_Model_Monthly_2006to2050_Mean_Temperature_Data = (Norway_Model_Monthly_2006to2050_Min_Temperature_Data + Norway_Model_Monthly_2006to2050_Max_Temperature_Data) / 2; % K

    % Future 2051 to 2095
China_Model_Monthly_2051to2095_Mean_Temperature_Data = (China_Model_Monthly_2051to2095_Min_Temperature_Data + China_Model_Monthly_2051to2095_Max_Temperature_Data) / 2; % K
France_Model_Monthly_2051to2095_Mean_Temperature_Data = (France_Model_Monthly_2051to2095_Min_Temperature_Data + France_Model_Monthly_2051to2095_Max_Temperature_Data) / 2; % K
Russia_Model_Monthly_2051to2095_Mean_Temperature_Data = (Russia_Model_Monthly_2051to2095_Min_Temperature_Data + Russia_Model_Monthly_2051to2095_Max_Temperature_Data) / 2; % K
Japan_Model_Monthly_2051to2095_Mean_Temperature_Data = (Japan_Model_Monthly_2051to2095_Min_Temperature_Data + Japan_Model_Monthly_2051to2095_Max_Temperature_Data) / 2; % K 
Norway_Model_Monthly_2051to2095_Mean_Temperature_Data = (Norway_Model_Monthly_2051to2095_Min_Temperature_Data + Norway_Model_Monthly_2051to2095_Max_Temperature_Data) / 2; % K
 
% Covert monthly to annual mean (Teperture)
    % Reshape the data into a 12x45 matrix
        % historical 1961 to 2005
rD_Observed_Monthly_1961to2005_Mean_Temperature_Data = reshape(Observed_Monthly_1961to2005_Mean_Temperature_Data, 12, 45); % K

rD_China_Model_Monthly_1961to2005_Mean_Temperature_Data = reshape(China_Model_Monthly_1961to2005_Mean_Temperature_Data, 12, 45); % K
rD_France_Model_Monthly_1961to2005_Mean_Temperature_Data = reshape(France_Model_Monthly_1961to2005_Mean_Temperature_Data, 12, 45); % K
rD_Russia_Model_Monthly_1961to2005_Mean_Temperature_Data = reshape(Russia_Model_Monthly_1961to2005_Mean_Temperature_Data, 12, 45); % K
rD_Japan_Model_Monthly_1961to2005_Mean_Temperature_Data = reshape(Japan_Model_Monthly_1961to2005_Mean_Temperature_Data, 12, 45); % K
rD_Norway_Model_Monthly_1961to2005_Mean_Temperature_Data = reshape(Norway_Model_Monthly_1961to2005_Mean_Temperature_Data, 12, 45); % K

        % Future 2006 to 2050
rD_China_Model_Monthly_2006to2050_Mean_Temperature_Data = reshape(China_Model_Monthly_2006to2050_Mean_Temperature_Data, 12, 45); % K
rD_France_Model_Monthly_2006to2050_Mean_Temperature_Data = reshape(France_Model_Monthly_2006to2050_Mean_Temperature_Data, 12, 45); % K
rD_Russia_Model_Monthly_2006to2050_Mean_Temperature_Data = reshape(Russia_Model_Monthly_2006to2050_Mean_Temperature_Data, 12, 45); % K
rD_Japan_Model_Monthly_2006to2050_Mean_Temperature_Data = reshape(Japan_Model_Monthly_2006to2050_Mean_Temperature_Data, 12, 45); % K
rD_Norway_Model_Monthly_2006to2050_Mean_Temperature_Data = reshape(Norway_Model_Monthly_2006to2050_Mean_Temperature_Data, 12, 45); % K


        % Future 2051 to 2095
rD_China_Model_Monthly_2051to2095_Mean_Temperature_Data = reshape(China_Model_Monthly_2051to2095_Mean_Temperature_Data, 12, 45); % K
rD_France_Model_Monthly_2051to2095_Mean_Temperature_Data = reshape(France_Model_Monthly_2051to2095_Mean_Temperature_Data, 12, 45); % K
rD_Russia_Model_Monthly_2051to2095_Mean_Temperature_Data = reshape(Russia_Model_Monthly_2051to2095_Mean_Temperature_Data, 12, 45); % K
rD_Japan_Model_Monthly_2051to2095_Mean_Temperature_Data = reshape(Japan_Model_Monthly_2051to2095_Mean_Temperature_Data, 12, 45); % K
rD_Norway_Model_Monthly_2051to2095_Mean_Temperature_Data = reshape(Norway_Model_Monthly_2051to2095_Mean_Temperature_Data, 12, 45); % K   
        
    % Compute yearly means
        % historical 1961 to 2005
Observed_Yearly_1961to2005_Mean_Temperature_Data = mean(rD_Observed_Monthly_1961to2005_Mean_Temperature_Data, 1); % K

China_Model_Yearly_1961to2005_Mean_Temperature_Data = mean(rD_China_Model_Monthly_1961to2005_Mean_Temperature_Data, 1); % K
France_Model_Yearly_1961to2005_Mean_Temperature_Data = mean(rD_France_Model_Monthly_1961to2005_Mean_Temperature_Data, 1); % K
Russia_Model_Yearly_1961to2005_Mean_Temperature_Data = mean(rD_Russia_Model_Monthly_1961to2005_Mean_Temperature_Data, 1); % K
Japan_Model_Yearly_1961to2005_Mean_Temperature_Data = mean(rD_Japan_Model_Monthly_1961to2005_Mean_Temperature_Data, 1); % K
Norway_Model_Yearly_1961to2005_Mean_Temperature_Data = mean(rD_Norway_Model_Monthly_1961to2005_Mean_Temperature_Data, 1); % K

        % Future 2006 to 2050
China_Model_Yearly_2006to2050_Mean_Temperature_Data = mean(rD_China_Model_Monthly_2006to2050_Mean_Temperature_Data, 1); % K
France_Model_Yearly_2006to2050_Mean_Temperature_Data = mean(rD_France_Model_Monthly_2006to2050_Mean_Temperature_Data, 1); % K
Russia_Model_Yearly_2006to2050_Mean_Temperature_Data = mean(rD_Russia_Model_Monthly_2006to2050_Mean_Temperature_Data, 1); % K
Japan_Model_Yearly_2006to2050_Mean_Temperature_Data = mean(rD_Japan_Model_Monthly_2006to2050_Mean_Temperature_Data, 1); % K
Norway_Model_Yearly_2006to2050_Mean_Temperature_Data = mean(rD_Norway_Model_Monthly_2006to2050_Mean_Temperature_Data, 1); % K    

        % Future 2051 to 2095 
China_Model_Yearly_2051to2095_Mean_Temperature_Data = mean(rD_China_Model_Monthly_2051to2095_Mean_Temperature_Data, 1); % K
France_Model_Yearly_2051to2095_Mean_Temperature_Data = mean(rD_France_Model_Monthly_2051to2095_Mean_Temperature_Data, 1); % K
Russia_Model_Yearly_2051to2095_Mean_Temperature_Data = mean(rD_Russia_Model_Monthly_2051to2095_Mean_Temperature_Data, 1); % K
Japan_Model_Yearly_2051to2095_Mean_Temperature_Data = mean(rD_Japan_Model_Monthly_2051to2095_Mean_Temperature_Data, 1); % K
Norway_Model_Yearly_2051to2095_Mean_Temperature_Data = mean(rD_Norway_Model_Monthly_2051to2095_Mean_Temperature_Data, 1); % K              
     
% Covert monthly to annual sum (Precipitation)
    % Reshape the data into a 12x45 matrix
        % historical 1961 to 2005
rD_Observed_Monthly_1961to2005_Precipitation_Data = reshape(Observed_Monthly_1961to2005_Precipitation_Data, 12, 45); % K

rD_China_Model_Monthly_1961to2005_Precipitation_Data = reshape(China_Model_Monthly_1961to2005_Precipitation_Data, 12, 45); % K
rD_France_Model_Monthly_1961to2005_Precipitation_Data = reshape(France_Model_Monthly_1961to2005_Precipitation_Data, 12, 45); % K
rD_Russia_Model_Monthly_1961to2005_Precipitation_Data = reshape(Russia_Model_Monthly_1961to2005_Precipitation_Data, 12, 45); % K
rD_Japan_Model_Monthly_1961to2005_Precipitation_Data = reshape(Japan_Model_Monthly_1961to2005_Precipitation_Data, 12, 45); % K
rD_Norway_Model_Monthly_1961to2005_Precipitation_Data = reshape(Norway_Model_Monthly_1961to2005_Precipitation_Data, 12, 45); % K

        % Future 2006 to 2050
rD_China_Model_Monthly_2006to2050_Precipitation_Data = reshape(China_Model_Monthly_2006to2050_Precipitation_Data, 12, 45); % K
rD_France_Model_Monthly_2006to2050_Precipitation_Data = reshape(France_Model_Monthly_2006to2050_Precipitation_Data, 12, 45); % K
rD_Russia_Model_Monthly_2006to2050_Precipitation_Data = reshape(Russia_Model_Monthly_2006to2050_Precipitation_Data, 12, 45); % K
rD_Japan_Model_Monthly_2006to2050_Precipitation_Data = reshape(Japan_Model_Monthly_2006to2050_Precipitation_Data, 12, 45); % K
rD_Norway_Model_Monthly_2006to2050_Precipitation_Data = reshape(Norway_Model_Monthly_2006to2050_Precipitation_Data, 12, 45); % K


        % Future 2051 to 2095
rD_China_Model_Monthly_2051to2095_Precipitation_Data = reshape(China_Model_Monthly_2051to2095_Precipitation_Data, 12, 45); % K
rD_France_Model_Monthly_2051to2095_Precipitation_Data = reshape(France_Model_Monthly_2051to2095_Precipitation_Data, 12, 45); % K
rD_Russia_Model_Monthly_2051to2095_Precipitation_Data = reshape(Russia_Model_Monthly_2051to2095_Precipitation_Data, 12, 45); % K
rD_Japan_Model_Monthly_2051to2095_Precipitation_Data = reshape(Japan_Model_Monthly_2051to2095_Precipitation_Data, 12, 45); % K
rD_Norway_Model_Monthly_2051to2095_Precipitation_Data = reshape(Norway_Model_Monthly_2051to2095_Precipitation_Data, 12, 45); % K   
        
    % Compute yearly sums
        % historical 1961 to 2005
Observed_Yearly_1961to2005_Precipitation_Data = sum(rD_Observed_Monthly_1961to2005_Precipitation_Data, 1); % K

China_Model_Yearly_1961to2005_Precipitation_Data = sum(rD_China_Model_Monthly_1961to2005_Precipitation_Data, 1); % K
France_Model_Yearly_1961to2005_Precipitation_Data = sum(rD_France_Model_Monthly_1961to2005_Precipitation_Data, 1); % K
Russia_Model_Yearly_1961to2005_Precipitation_Data = sum(rD_Russia_Model_Monthly_1961to2005_Precipitation_Data, 1); % K
Japan_Model_Yearly_1961to2005_Precipitation_Data = sum(rD_Japan_Model_Monthly_1961to2005_Precipitation_Data, 1); % K
Norway_Model_Yearly_1961to2005_Precipitation_Data = sum(rD_Norway_Model_Monthly_1961to2005_Precipitation_Data, 1); % K

        % Future 2006 to 2050
China_Model_Yearly_2006to2050_Precipitation_Data = sum(rD_China_Model_Monthly_2006to2050_Precipitation_Data, 1); % K
France_Model_Yearly_2006to2050_Precipitation_Data = sum(rD_France_Model_Monthly_2006to2050_Precipitation_Data, 1); % K
Russia_Model_Yearly_2006to2050_Precipitation_Data = sum(rD_Russia_Model_Monthly_2006to2050_Precipitation_Data, 1); % K
Japan_Model_Yearly_2006to2050_Precipitation_Data = sum(rD_Japan_Model_Monthly_2006to2050_Precipitation_Data, 1); % K
Norway_Model_Yearly_2006to2050_Precipitation_Data = sum(rD_Norway_Model_Monthly_2006to2050_Precipitation_Data, 1); % K    

        % Future 2051 to 2095 
China_Model_Yearly_2051to2095_Precipitation_Data = sum(rD_China_Model_Monthly_2051to2095_Precipitation_Data, 1); % K
France_Model_Yearly_2051to2095_Precipitation_Data = sum(rD_France_Model_Monthly_2051to2095_Precipitation_Data, 1); % K
Russia_Model_Yearly_2051to2095_Precipitation_Data = sum(rD_Russia_Model_Monthly_2051to2095_Precipitation_Data, 1); % K
Japan_Model_Yearly_2051to2095_Precipitation_Data = sum(rD_Japan_Model_Monthly_2051to2095_Precipitation_Data, 1); % K
Norway_Model_Yearly_2051to2095_Precipitation_Data = sum(rD_Norway_Model_Monthly_2051to2095_Precipitation_Data, 1); % K        


% Generate Plots for Observed and Modeled Data
close all;

% Define time vectors for each period
time_1961_2005 = 1961:2005;
time_2006_2050 = 2006:2050;
time_2051_2095 = 2051:2095;

% Plot (1): Observed vs. Modeled Mean Temperature (1961-2005)
figure;
plot(time_1961_2005, Observed_Yearly_1961to2005_Mean_Temperature_Data, 'k', 'LineWidth', 2, 'DisplayName', 'Observed');
hold on;
plot(time_1961_2005, China_Model_Yearly_1961to2005_Mean_Temperature_Data, 'DisplayName', 'China');
plot(time_1961_2005, France_Model_Yearly_1961to2005_Mean_Temperature_Data, 'DisplayName', 'France');
plot(time_1961_2005, Russia_Model_Yearly_1961to2005_Mean_Temperature_Data, 'DisplayName', 'Russia');
plot(time_1961_2005, Japan_Model_Yearly_1961to2005_Mean_Temperature_Data, 'DisplayName', 'Japan');
plot(time_1961_2005, Norway_Model_Yearly_1961to2005_Mean_Temperature_Data, 'DisplayName', 'Norway');
hold off;
legend;
title('Observed vs. Modeled Mean Temperature (1961-2005)');
xlabel('Year');
ylabel('Temperature (K)');
grid on;

% Plot (2): Future Modeled Mean Temperature (2006-2050)
figure;
plot(time_2006_2050, China_Model_Yearly_2006to2050_Mean_Temperature_Data, 'DisplayName', 'China');
hold on;
plot(time_2006_2050, France_Model_Yearly_2006to2050_Mean_Temperature_Data, 'DisplayName', 'France');
plot(time_2006_2050, Russia_Model_Yearly_2006to2050_Mean_Temperature_Data, 'DisplayName', 'Russia');
plot(time_2006_2050, Japan_Model_Yearly_2006to2050_Mean_Temperature_Data, 'DisplayName', 'Japan');
plot(time_2006_2050, Norway_Model_Yearly_2006to2050_Mean_Temperature_Data, 'DisplayName', 'Norway');
hold off;
legend;
title('Future Modeled Mean Temperature (2006-2050)');
xlabel('Year');
ylabel('Temperature (K)');
grid on;

% Plot (3): Future Modeled Mean Temperature (2051-2095)
figure;
plot(time_2051_2095, China_Model_Yearly_2051to2095_Mean_Temperature_Data, 'DisplayName', 'China');
hold on;
plot(time_2051_2095, France_Model_Yearly_2051to2095_Mean_Temperature_Data, 'DisplayName', 'France');
plot(time_2051_2095, Russia_Model_Yearly_2051to2095_Mean_Temperature_Data, 'DisplayName', 'Russia');
plot(time_2051_2095, Japan_Model_Yearly_2051to2095_Mean_Temperature_Data, 'DisplayName', 'Japan');
plot(time_2051_2095, Norway_Model_Yearly_2051to2095_Mean_Temperature_Data, 'DisplayName', 'Norway');
hold off;
legend;
title('Future Modeled Mean Temperature (2051-2095)');
xlabel('Year');
ylabel('Temperature (K)');
grid on;

% Plot (4): Observed vs. Modeled Precipitation (1961-2005)
figure;
plot(time_1961_2005, Observed_Yearly_1961to2005_Precipitation_Data, 'k', 'LineWidth', 2, 'DisplayName', 'Observed');
hold on;
plot(time_1961_2005, China_Model_Yearly_1961to2005_Precipitation_Data, 'DisplayName', 'China');
plot(time_1961_2005, France_Model_Yearly_1961to2005_Precipitation_Data, 'DisplayName', 'France');
plot(time_1961_2005, Russia_Model_Yearly_1961to2005_Precipitation_Data, 'DisplayName', 'Russia');
plot(time_1961_2005, Japan_Model_Yearly_1961to2005_Precipitation_Data, 'DisplayName', 'Japan');
plot(time_1961_2005, Norway_Model_Yearly_1961to2005_Precipitation_Data, 'DisplayName', 'Norway');
hold off;
legend;
title('Observed vs. Modeled Precipitation (1961-2005)');
xlabel('Year');
ylabel('Precipitation (mm)');
grid on;

% Plot (5): Future Modeled Precipitation (2006-2050)
figure;
plot(time_2006_2050, China_Model_Yearly_2006to2050_Precipitation_Data, 'DisplayName', 'China');
hold on;
plot(time_2006_2050, France_Model_Yearly_2006to2050_Precipitation_Data, 'DisplayName', 'France');
plot(time_2006_2050, Russia_Model_Yearly_2006to2050_Precipitation_Data, 'DisplayName', 'Russia');
plot(time_2006_2050, Japan_Model_Yearly_2006to2050_Precipitation_Data, 'DisplayName', 'Japan');
plot(time_2006_2050, Norway_Model_Yearly_2006to2050_Precipitation_Data, 'DisplayName', 'Norway');
hold off;
legend;
title('Future Modeled Precipitation (2006-2050)');
xlabel('Year');
ylabel('Precipitation (mm)');
grid on;

% Plot (6): Future Modeled Precipitation (2051-2095)
figure;
plot(time_2051_2095, China_Model_Yearly_2051to2095_Precipitation_Data, 'DisplayName', 'China');
hold on;
plot(time_2051_2095, France_Model_Yearly_2051to2095_Precipitation_Data, 'DisplayName', 'France');
plot(time_2051_2095, Russia_Model_Yearly_2051to2095_Precipitation_Data, 'DisplayName', 'Russia');
plot(time_2051_2095, Japan_Model_Yearly_2051to2095_Precipitation_Data, 'DisplayName', 'Japan');
plot(time_2051_2095, Norway_Model_Yearly_2051to2095_Precipitation_Data, 'DisplayName', 'Norway');
hold off;
legend;
title('Future Modeled Precipitation (2051-2095)');
xlabel('Year');
ylabel('Precipitation (mm)');
grid on;





