/// @description Insert description here
// You can write your code in this editor
spd = 1;
maxspd = 3;
grounded = false;
bounced = false;
grv = .3;
frc = .05;
vspd = 0;
hspd = 0;
jspd = 4.5;
moving = 0;

gameOver = false;
screenShake = false;
stopTimer = false;

image_speed = 1;

//controls




//particles
global.ExplodeSystem = part_system_create_layer(layer,true); 
global.Part_Explode = part_type_create()
part_type_shape(global.Part_Explode, pt_shape_pixel)
part_type_size(global.Part_Explode, 1, 1, 0, 0);
part_type_color1(global.Part_Explode, c_black);
part_type_alpha1(global.Part_Explode, 1);
part_type_speed(global.Part_Explode, 2, 8, -0.1, 0);
part_type_direction(global.Part_Explode,0, 360, 0, 0);
part_type_life(global.Part_Explode, 5, 25);