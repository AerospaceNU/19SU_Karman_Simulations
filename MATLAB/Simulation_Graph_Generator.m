close all; clear all;
%written by Isaac Kramer and Alex Gushulak on 25 February 2019

%% set directory to appropriate location based on local GitHub
cd C:\Users\isaac\Documents\GitHub\19SP_Karman_Simulations\MATLAB\RASAero_Data\FullScale_MinDiameterBooster;
%% Data Assigned to Variables
data_file = xlsread('20190311_MinDiameterBooster_RASAeroFlightData.xlsx'); 

time_sec = data_file(:,1);
time_min = time_sec./60; % Convert to minutes
mach_number = data_file(:,4);
thrust = data_file(:,8);
weight = data_file(:,9);
drag = data_file(:,10);
stability = data_file(:,14);
accel = data_file(:,15);
velocity = data_file(:,18);
altitude = data_file(:,23);

%% Plotting
plot1 = plot(time_min, drag);
xlim([0 2.8]);
plot1(1).LineWidth = 3;
plot1(1).Color = [.80,.22,.40];
set(gca,'FontSize',12)
xlabel ('Time (mins)', 'FontSize', 30);
ylabel ('Drag (lb)', 'FontSize', 30);

title ('Aerodynamic Drag', 'FontSize', 30);
set(gcf, 'color', 'w'); % set graph background to white
grid on;

% Note: Air Density at 42,000' = 0.00287802 kg/m^3


