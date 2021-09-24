
% drawQuadcopter takes a point which is the center of mass and draws 
% the quadcopter with that in the center.  It does not computer reference
% frames.  Use the correct Earth frame!
% Accepts:  com_x, com_y  (center of mass x and y)

%dummy variables

com_x = 20;
com_y = 20;
com_z = 20;
l = 10;
w = 2;

myplot(20,20, 20, 10,2);

function dq = myplot(com_x, com_y, com_z l, w )
   hold on
   rectangle ('Position',[com_x + l/2 - w/2, com_y, w, l],'FaceColor','b');
   rectangle ('Position',[com_x, com_y + l/2 - w/2, l, w],'FaceColor','b');
   rectangle ('Position',[com_x - w, com_y + l/2 - w,2 * w, 2 * w], 'Curvature', [1 1], 'FaceColor','y');
   rectangle ('Position',[com_x + l - w, com_y + l/2 - w,2 * w, 2 * w], 'Curvature', [1 1], 'FaceColor','y');
   rectangle ('Position',[com_x + l/2 - w, com_y - w, 2 * w, 2 * w], 'Curvature', [1 1], 'FaceColor','y');
   rectangle ('Position',[com_x + l/2 - w, com_y + l - w/2, 2 * w, 2 * w], 'Curvature', [1 1], 'FaceColor','y');
   daspect([1,1,1])
   

end

