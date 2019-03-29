close all; clear all;
%written by Isaac Kramer and Alex Gushulak on 25 February 2019

%% set directory to appropriate location based on local GitHub
%cd C:\Users\AIAA\Documents\GitHub\19SP_Karman_Simulations\MATLAB\RASAero_Data\FullScale_MinDiameterBooster;
%% Data Assigned to Variables
data_file = xlsread('20190311_MinDiameterBooster_RASAeroFlightData.xlsx'); 

time_sec = data_file(:,1);
time_min = time_sec./60
mach_number = data_file(:,4);
thrust = data_file(:,8);
weight = data_file(:,9);
drag = data_file(:,10);
stability = data_file(:,14);
accel = data_file(:,15);
velocity = data_file(:,18);
altitude = data_file(:,23);

%% Plotting
plot1 = plot(time_sec, stability);
xlim([0 155]);
plot1(1).LineWidth = 3;
plot1(1).Color = [.95,.15,.15];
set(gca,'FontSize',12);
xlabel ('Time (sec)', 'FontSize', 25);
ylabel ('Stability (calibers)', 'FontSize', 25);

title ('Flight Stability', 'FontSize', 25);
set(gcf, 'color', 'w'); % set graph background to white
grid on;
% Note: Air Density at 42,000' = 0.00287802 kg/m^3


