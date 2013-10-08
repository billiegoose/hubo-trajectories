% Reverse fingers
files = dir('*.traj');
for file = files'
    [D,J] = loadTraj(file.name);
    % Reverse fingers
    D(:,31:end) = -D(:,31:end);
    saveTraj(file.name,D,J);
end