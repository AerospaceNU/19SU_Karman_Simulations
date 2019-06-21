close all; clear all;
%written by Isaac Kramer and Alex Gushulak on 25 February 2019

%% set directory to appropriate location based on local GitHub
%cd C:\Users\SimCity\Documents\GitHub\19SP_Karman_Simulations\MATLAB\RASAero_Data;
%% Data Assigned to Variables
data_file = xlsread('20190418_RASAeroData_FullScale.xlsx'); 

time_sec = data_file(:,1);
time_min = time_sec./60;
mach_number = data_file(:,4);
thrust = data_file(:,8);
weight = data_file(:,9);
drag = data_file(:,10);
stability = data_file(:,14);
accel = data_file(:,15);
velocity = data_file(:,18);
altitude = data_file(:,23);

%% Plotting
plot1 = plot(time_min, mach_number);
xlim([0 2.8]);
plot1(1).LineWidth = 3;
plot1(1).Color = [.80,.22,.40];
set(gca,'FontSize',12)
xlabel ('Time (mins)', 'FontSize', 30);
ylabel ('Mach Number', 'FontSize', 30);

title ('Mach', 'FontSize', 30);
set(gcf, 'color', 'w'); % set graph background to white
grid on;

%% Plotting
plot2 = plot(time_min, altitude);
plot2(1).LineWidth = 3;
plot2(1).Color = [.80,.22,.40];
set(gca,'FontSize',12)
xlabel ('Time (mins)', 'FontSize', 30);
ylabel ('Altitude', 'FontSize', 30);

%% 

title ('Mach', 'FontSize', 30);
plot1 = plot(CX15_Time./10000, CX15_Temp);
plot1(1).LineWidth = 3;
plot1(1).Color = [.95,.15,.15];
set(gca,'FontSize',12);
xlabel ('Time', 'FontSize', 25);
ylabel ('Temperature (C)', 'FontSize', 25);

title ('3xCF15 Temperature', 'FontSize', 25);
set(gcf, 'color', 'w'); % set graph background to white
grid on;
% Note: Air Density at 42,000' = 0.00287802 kg/m^3


