% NOTE: HW4_Data_Downloading_and_PreProcessing.m must be run first
%       EVERYTIME!
run("HW4_Data_Downloading_and_PreProcessing.m");


% Multiple Lineat Regression Model of Inflow 

% Load Additional Data (HW2 inflow)
Annual_Inflow_data = readmatrix("CEE4211 Homework 2 Data.xlsx"); 

% Assign Data for Historical Period of 1961 to 2005
Observed_Yearly_1961to2005_Inflow = ...
    Annual_Inflow_data(23:67, 2); 

% Reshape observed data into column vectors for fitlm compatibility
    % historical 1961 to 2005
Observed_Yearly_1961to2005_Inflow = ... 
    Observed_Yearly_1961to2005_Inflow(:);
Observed_Yearly_1961to2005_Precipitation_Data = ...
    Observed_Yearly_1961to2005_Precipitation_Data(:);
Observed_Yearly_1961to2005_Mean_Temperature_Data = ...
    Observed_Yearly_1961to2005_Mean_Temperature_Data(:);

    % Control Period 1961 to 2005
China_Model_Yearly_1961to2005_Precipitation_Data = ...
    China_Model_Yearly_1961to2005_Precipitation_Data(:);
China_Model_Yearly_1961to2005_Mean_Temperature_Data = ...
    China_Model_Yearly_1961to2005_Mean_Temperature_Data(:);
France_Model_Yearly_1961to2005_Precipitation_Data = ...
    France_Model_Yearly_1961to2005_Precipitation_Data(:);
France_Model_Yearly_1961to2005_Mean_Temperature_Data = ...
    France_Model_Yearly_1961to2005_Mean_Temperature_Data(:);
Russia_Model_Yearly_1961to2005_Precipitation_Data = ...
    Russia_Model_Yearly_1961to2005_Precipitation_Data(:);
Russia_Model_Yearly_1961to2005_Mean_Temperature_Data = ...
    Russia_Model_Yearly_1961to2005_Mean_Temperature_Data(:);
Japan_Model_Yearly_1961to2005_Precipitation_Data = ...
    Japan_Model_Yearly_1961to2005_Precipitation_Data(:);
Japan_Model_Yearly_1961to2005_Mean_Temperature_Data = ...
    Japan_Model_Yearly_1961to2005_Mean_Temperature_Data(:);
Norway_Model_Yearly_1961to2005_Precipitation_Data = ...
    Norway_Model_Yearly_1961to2005_Precipitation_Data(:);
Norway_Model_Yearly_1961to2005_Mean_Temperature_Data = ...
    Norway_Model_Yearly_1961to2005_Mean_Temperature_Data(:);

    % Future 2006 to 2050
China_Model_Yearly_2006to2050_Precipitation_Data = ...
    China_Model_Yearly_2006to2050_Precipitation_Data(:);
China_Model_Yearly_2006to2050_Mean_Temperature_Data = ...
    China_Model_Yearly_2006to2050_Mean_Temperature_Data(:);
France_Model_Yearly_2006to2050_Precipitation_Data = ...
    France_Model_Yearly_2006to2050_Precipitation_Data(:);
France_Model_Yearly_2006to2050_Mean_Temperature_Data = ...
    France_Model_Yearly_2006to2050_Mean_Temperature_Data(:);
Russia_Model_Yearly_2006to2050_Precipitation_Data = ...
    Russia_Model_Yearly_2006to2050_Precipitation_Data(:);
Russia_Model_Yearly_2006to2050_Mean_Temperature_Data = ...
    Russia_Model_Yearly_2006to2050_Mean_Temperature_Data(:);
Japan_Model_Yearly_2006to2050_Precipitation_Data = ...
    Japan_Model_Yearly_2006to2050_Precipitation_Data(:);
Japan_Model_Yearly_2006to2050_Mean_Temperature_Data = ...
    Japan_Model_Yearly_2006to2050_Mean_Temperature_Data(:);
Norway_Model_Yearly_2006to2050_Precipitation_Data = ...
    Norway_Model_Yearly_2006to2050_Precipitation_Data(:);
Norway_Model_Yearly_2006to2050_Mean_Temperature_Data = ...
    Norway_Model_Yearly_2006to2050_Mean_Temperature_Data(:);


    % Future 2051 to 2095
China_Model_Yearly_2051to2095_Precipitation_Data = ...
    China_Model_Yearly_2051to2095_Precipitation_Data(:);
China_Model_Yearly_2051to2095_Mean_Temperature_Data = ...
    China_Model_Yearly_2051to2095_Mean_Temperature_Data(:);
France_Model_Yearly_2051to2095_Precipitation_Data = ...
    France_Model_Yearly_2051to2095_Precipitation_Data(:);
France_Model_Yearly_2051to2095_Mean_Temperature_Data = ...
    France_Model_Yearly_2051to2095_Mean_Temperature_Data(:);
Russia_Model_Yearly_2051to2095_Precipitation_Data = ...
    Russia_Model_Yearly_2051to2095_Precipitation_Data(:);
Russia_Model_Yearly_2051to2095_Mean_Temperature_Data = ...
    Russia_Model_Yearly_2051to2095_Mean_Temperature_Data(:);
Japan_Model_Yearly_2051to2095_Precipitation_Data = ...
    Japan_Model_Yearly_2051to2095_Precipitation_Data(:);
Japan_Model_Yearly_2051to2095_Mean_Temperature_Data = ...
    Japan_Model_Yearly_2051to2095_Mean_Temperature_Data(:);
Norway_Model_Yearly_2051to2095_Precipitation_Data = ...
    Norway_Model_Yearly_2051to2095_Precipitation_Data(:);
Norway_Model_Yearly_2051to2095_Mean_Temperature_Data = ...
    Norway_Model_Yearly_2051to2095_Mean_Temperature_Data(:);

% Combine precipitation and temperature data into predictors matrix
    % Historical 1961 to 2005
Observed_Predictors = ...
    [Observed_Yearly_1961to2005_Precipitation_Data, ...
    Observed_Yearly_1961to2005_Mean_Temperature_Data];
    
    % Control Period
China_Model_Yearly_1961to2005_Predictors = ...
    [China_Model_Yearly_1961to2005_Precipitation_Data, ...
    China_Model_Yearly_1961to2005_Mean_Temperature_Data];
France_Model_Yearly_1961to2005_Predictors = ...
    [France_Model_Yearly_1961to2005_Precipitation_Data, ...
    France_Model_Yearly_1961to2005_Mean_Temperature_Data];
Russia_Model_Yearly_1961to2005_Predictors = ...
    [Russia_Model_Yearly_1961to2005_Precipitation_Data, ...
    Russia_Model_Yearly_1961to2005_Mean_Temperature_Data];
Japan_Model_Yearly_1961to2005_Predictors = ...
    [Japan_Model_Yearly_1961to2005_Precipitation_Data, ...
    Japan_Model_Yearly_1961to2005_Mean_Temperature_Data];
Norway_Model_Yearly_1961to2005_Predictors = ...
    [Norway_Model_Yearly_1961to2005_Precipitation_Data, ...
    Norway_Model_Yearly_1961to2005_Mean_Temperature_Data];

    % Future 2006 to 2050
China_Model_Yearly_2006to2050_Predictors = ...
    [China_Model_Yearly_2006to2050_Precipitation_Data, ...
    China_Model_Yearly_2006to2050_Mean_Temperature_Data];
France_Model_Yearly_2006to2050_Predictors = ...
    [France_Model_Yearly_2006to2050_Precipitation_Data, ...
    France_Model_Yearly_2006to2050_Mean_Temperature_Data];
Russia_Model_Yearly_2006to2050_Predictors = ...
    [Russia_Model_Yearly_2006to2050_Precipitation_Data, ...
    Russia_Model_Yearly_2006to2050_Mean_Temperature_Data];
Japan_Model_Yearly_2006to2050_Predictors = ...
    [Japan_Model_Yearly_2006to2050_Precipitation_Data, ...
    Japan_Model_Yearly_2006to2050_Mean_Temperature_Data];
Norway_Model_Yearly_2006to2050_Predictors = ...
    [Norway_Model_Yearly_2006to2050_Precipitation_Data, ...
    Norway_Model_Yearly_2006to2050_Mean_Temperature_Data];

    % Future 2051 to 2095
China_Model_Yearly_2051to2095_Predictors = ...
    [China_Model_Yearly_2051to2095_Precipitation_Data, ...
    China_Model_Yearly_2051to2095_Mean_Temperature_Data];
France_Model_Yearly_2051to2095_Predictors = ...
    [France_Model_Yearly_2051to2095_Precipitation_Data, ...
    France_Model_Yearly_2051to2095_Mean_Temperature_Data];
Russia_Model_Yearly_2051to2095_Predictors = ...
    [Russia_Model_Yearly_2051to2095_Precipitation_Data, ...
    Russia_Model_Yearly_2051to2095_Mean_Temperature_Data];
Japan_Model_Yearly_2051to2095_Predictors = ...
    [Japan_Model_Yearly_2051to2095_Precipitation_Data, ...
    Japan_Model_Yearly_2051to2095_Mean_Temperature_Data];
Norway_Model_Yearly_2051to2095_Predictors = ...
    [Norway_Model_Yearly_2051to2095_Precipitation_Data, ...
    Norway_Model_Yearly_2051to2095_Mean_Temperature_Data];

% Fit the linear model to observed data
Inflow_Prediction_Model = fitlm(...
    Observed_Predictors, Observed_Yearly_1961to2005_Inflow);

    % Display the model summary
disp('Fitted Model Summary:');
disp(Inflow_Prediction_Model); 

% Predict inflows using the trained model
    % Control Period 1961 to 2005
China_Model_Yearly_1961to2005_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, China_Model_Yearly_1961to2005_Predictors);
France_Model_Yearly_1961to2005_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, France_Model_Yearly_1961to2005_Predictors);
Russia_Model_Yearly_1961to2005_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, Russia_Model_Yearly_1961to2005_Predictors);
Japan_Model_Yearly_1961to2005_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, Japan_Model_Yearly_1961to2005_Predictors);
Norway_Model_Yearly_1961to2005_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, Norway_Model_Yearly_1961to2005_Predictors);

    % Future Period 2006 to 2050
China_Model_Yearly_2006to2050_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, China_Model_Yearly_2006to2050_Predictors);
France_Model_Yearly_2006to2050_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, France_Model_Yearly_2006to2050_Predictors);
Russia_Model_Yearly_2006to2050_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, Russia_Model_Yearly_2006to2050_Predictors);
Japan_Model_Yearly_2006to2050_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, Japan_Model_Yearly_2006to2050_Predictors);
Norway_Model_Yearly_2006to2050_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, Norway_Model_Yearly_2006to2050_Predictors);

    % Future Period 2051 to 2095
China_Model_Yearly_2051to2095_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, China_Model_Yearly_2051to2095_Predictors);
France_Model_Yearly_2051to2095_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, France_Model_Yearly_2051to2095_Predictors);
Russia_Model_Yearly_2051to2095_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, Russia_Model_Yearly_2051to2095_Predictors);
Japan_Model_Yearly_2051to2095_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, Japan_Model_Yearly_2051to2095_Predictors);
Norway_Model_Yearly_2051to2095_Predicted_Inflow_Data = predict( ...
    Inflow_Prediction_Model, Norway_Model_Yearly_2051to2095_Predictors);


% Display the predicted inflows
        % Control Period 1961 to 2005
disp('Predicted Inflows for China Model during Control Period 1961 to 2005:');
disp(China_Model_Yearly_1961to2005_Predicted_Inflow_Data);
disp('Predicted Inflows for France Model during Control Period 1961 to 2005:');
disp(France_Model_Yearly_1961to2005_Predicted_Inflow_Data);
disp('Predicted Inflows for Russia Model during Control Period 1961 to 2005:');
disp(Russia_Model_Yearly_1961to2005_Predicted_Inflow_Data);
disp('Predicted Inflows for Japan Model during Control Period 1961 to 2005:');
disp(Russia_Model_Yearly_1961to2005_Predicted_Inflow_Data);
disp('Predicted Inflows for Norway Model during Control Period 1961 to 2005:');
disp(Norway_Model_Yearly_1961to2005_Predicted_Inflow_Data);

        % Future Period 2006 to 2050
disp('Predicted Inflows for China Model during Control Period 2006 to 2050:');
disp(China_Model_Yearly_2006to2050_Predicted_Inflow_Data);
disp('Predicted Inflows for France Model during Control Period 2006 to 2050:');
disp(France_Model_Yearly_2006to2050_Predicted_Inflow_Data);
disp('Predicted Inflows for Russia Model during Control Period 2006 to 2050:');
disp(Russia_Model_Yearly_2006to2050_Predicted_Inflow_Data);
disp('Predicted Inflows for Japan Model during Control Period 2006 to 2050:');
disp(Japan_Model_Yearly_2006to2050_Predicted_Inflow_Data);
disp('Predicted Inflows for Norway Model during Control Period 2006 to 2050:');
disp(Norway_Model_Yearly_2006to2050_Predicted_Inflow_Data);

        % Future Period 2051 to 2095
disp('Predicted Inflows for China Model during Control Period 2051 to 2095:');
disp(China_Model_Yearly_2051to2095_Predicted_Inflow_Data);
disp('Predicted Inflows for France Model during Control Period 2051 to 2095:');
disp(France_Model_Yearly_2051to2095_Predicted_Inflow_Data);
disp('Predicted Inflows for Russia Model during Control Period 2051 to 2095:');
disp(Russia_Model_Yearly_2051to2095_Predicted_Inflow_Data);
disp('Predicted Inflows for Japan Model during Control Period 2051 to 2095:');
disp(Japan_Model_Yearly_2051to2095_Predicted_Inflow_Data);
disp('Predicted Inflows for Norway Model during Control Period 2051 to 2095:');
disp(Norway_Model_Yearly_2051to2095_Predicted_Inflow_Data);
        
% Historical Plot (1961-2005)
figure;
hold on;
plot(1961:2005, Observed_Yearly_1961to2005_Inflow, 'k-', 'LineWidth', 2, 'DisplayName', 'Observed');
plot(1961:2005, China_Model_Yearly_1961to2005_Predicted_Inflow_Data, 'r--', 'LineWidth', 1.5, 'DisplayName', 'China Model');
plot(1961:2005, France_Model_Yearly_1961to2005_Predicted_Inflow_Data, 'b--', 'LineWidth', 1.5, 'DisplayName', 'France Model');
plot(1961:2005, Russia_Model_Yearly_1961to2005_Predicted_Inflow_Data, 'g--', 'LineWidth', 1.5, 'DisplayName', 'Russia Model');
plot(1961:2005, Japan_Model_Yearly_1961to2005_Predicted_Inflow_Data, 'm--', 'LineWidth', 1.5, 'DisplayName', 'Japan Model');
plot(1961:2005, Norway_Model_Yearly_1961to2005_Predicted_Inflow_Data, 'c--', 'LineWidth', 1.5, 'DisplayName', 'Norway Model');
title('Observed vs. Model Predicted Inflows (1961-2005)');
xlabel('Year');
ylabel('Inflow (units)');
legend('Location', 'Best');
grid on;
hold off;

% Future Prediction Plot (2006-2050)
figure;
hold on;
plot(2006:2050, China_Model_Yearly_2006to2050_Predicted_Inflow_Data, 'r--', 'LineWidth', 1.5, 'DisplayName', 'China Model');
plot(2006:2050, France_Model_Yearly_2006to2050_Predicted_Inflow_Data, 'b--', 'LineWidth', 1.5, 'DisplayName', 'France Model');
plot(2006:2050, Russia_Model_Yearly_2006to2050_Predicted_Inflow_Data, 'g--', 'LineWidth', 1.5, 'DisplayName', 'Russia Model');
plot(2006:2050, Japan_Model_Yearly_2006to2050_Predicted_Inflow_Data, 'm--', 'LineWidth', 1.5, 'DisplayName', 'Japan Model');
plot(2006:2050, Norway_Model_Yearly_2006to2050_Predicted_Inflow_Data, 'c--', 'LineWidth', 1.5, 'DisplayName', 'Norway Model');
title('Future Model Predicted Inflows (2006-2050)');
xlabel('Year');
ylabel('Inflow (units)');
legend('Location', 'Best');
grid on;
hold off;

% Future Prediction Plot (2051-2095)
figure;
hold on;
plot(2051:2095, China_Model_Yearly_2051to2095_Predicted_Inflow_Data, 'r--', 'LineWidth', 1.5, 'DisplayName', 'China Model');
plot(2051:2095, France_Model_Yearly_2051to2095_Predicted_Inflow_Data, 'b--', 'LineWidth', 1.5, 'DisplayName', 'France Model');
plot(2051:2095, Russia_Model_Yearly_2051to2095_Predicted_Inflow_Data, 'g--', 'LineWidth', 1.5, 'DisplayName', 'Russia Model');
plot(2051:2095, Japan_Model_Yearly_2051to2095_Predicted_Inflow_Data, 'm--', 'LineWidth', 1.5, 'DisplayName', 'Japan Model');
plot(2051:2095, Norway_Model_Yearly_2051to2095_Predicted_Inflow_Data, 'c--', 'LineWidth', 1.5, 'DisplayName', 'Norway Model');
title('Future Model Predicted Inflows (2051-2095)');
xlabel('Year');
ylabel('Inflow (units)');
legend('Location', 'Best');
grid on;
hold off;



