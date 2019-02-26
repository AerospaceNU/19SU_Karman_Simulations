%written by Isaac Kramer and Alex Gushulak on 25 February 2019

cd C:\Users\AIAA\Documents\GitHub\19SP_Karman_Simulations\MATLAB\20190225_FullScale_7inchBooster_Kramer;
%set directory to appropriate location based on local GitHub

new_file = xlsread('20190225_RASAeroData.xlsx'); 

time_sec = new_file(:,1);
mach_number = new_file(:,4);
thrust = new_file(:,8);
weight = new_file(:,9);
drag = new_file(:,10);
stability = new_file(:,14);
accel = new_file(:,15);
velocity = new_file(:,18);


%%
plot1 = plot(time_sec, drag, 'Color', [.30,.62,.96], 'LineWidth', 2);
xlim([0 50]);
xlabel ('Time (s)', 'FontSize', 24)
ylabel ('Thrust', 'FontSize', 24)
title ('Thrust vs Time', 'FontSize', 20)
set(gcf, 'color', 'w') % set graph background to white


