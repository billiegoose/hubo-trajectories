fingers = {'LF1','LF2','LF3','LF4','LF5'}
hz = 200;
finger_period = 2;
duration = finger_period*hz;
open = 0.9;
closed = -0.9;
% For convenience, let tau = 2*pi
tau = 2*pi;
temp_t = linspace(0,tau,duration);
one_bend = sin(temp_t)*0.9;
plot(temp_t,one_bend);

data = zeros(duration*5,5);
i = 0;
data((i+1):(i+duration),1) = one_bend;
i = i+duration;
data((i+1):(i+duration),2) = one_bend;
i = i+duration;
data((i+1):(i+duration),3) = one_bend;
i = i+duration;
data((i+1):(i+duration),4) = one_bend;
i = i+duration;
data((i+1):(i+duration),5) = one_bend;

plot(1:(duration*5), data(:,1), 'r', ...
    1:(duration*5), data(:,2), 'g', ...
    1:(duration*5), data(:,3), 'b', ...
    1:(duration*5), data(:,4), 'k', ...
    1:(duration*5), data(:,5), 'k')
saveTraj('fingerSine.traj',data,fingers);