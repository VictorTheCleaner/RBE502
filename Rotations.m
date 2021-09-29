
% dummy variables for testing:

psi = pi/4
angular_matrix = [0 1 pi/2]

%g = rotate_x(angular_matrix, psi);
%g

theta = pi/4
phi = pi/2
angular_matrix = [pi/2 pi/2 pi/2]

g = rotate_m(angular_matrix, phi, theta, psi);
g

% Rotation around X axis (PHI)

% This function will take a 3 x 1 angular marrix and rotate
% it around the x axis


function return_matrix = rotate_x(angular_matrix,phi)
    rot_x_matrix = [0 0 1; 0 cos(phi) -sin(phi); 0 sin(phi) cos(phi)];
    return_matrix = angular_matrix * rot_x_matrix  ;
end

% Rotation around Y axis (THETA) 

% This function will take a 3 x 1 angular marrix and rotate
% it around the y axis

% dummy variables for testing:


function return_matrix = rotate_y(angular_matrix,theta)
    rot_y_matrix = [cos(theta) 0 sin(theta); 0 1 0; -sin(theta) 0 cos(theta)];
    return_matrix = angular_matrix * rot_y_matrix  ;
end



% Rotation around Z axis (THETA) 

% This function will take a 3 x 1 angular marrix and rotate
% it around the z axis



function return_matrix = rotate_z(angular_matrix,psi)
    rot_z_matrix = [cos(psi) -sin(psi) 0; sin(psi) cos(psi) 0; 0 0 1];
    return_matrix = angular_matrix * rot_z_matrix  ;
end


% Rotation multiple (PHI, THETA, PSI) 

% This function will take a 3 x 1 angular marrix and rotate
% it around the x,y,z axis




function return_matrix = rotate_m(angular_matrix,phi, theta, psi)
    rot_m_matrix = [(cos(psi)*cos(theta)) (cos(psi) * sin(theta) * sin(phi) - sin(psi) * cos(phi)) (cos(psi) * sin(theta) * cos(phi) - sin(psi) * sin(phi)); (sin(psi) * cos(theta)) (sin(psi) * sin(theta) * sin(phi) + cos(psi) * cos(phi)) (sin(psi) * sin(theta) * cos(phi) - cos(psi) * sin(phi)); (-sin(theta)) (cos(theta) * sin(phi)) (cos(theta) * cos(phi))];
    return_matrix = angular_matrix * rot_m_matrix  ;
end
