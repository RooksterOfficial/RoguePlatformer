right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
jump = keyboard_check_pressed(vk_space);
nokey = keyboard_check(vk_nokey);
restart = keyboard_check(ord("R"));


if spd >= maxspd spd = maxspd;
if spd < 0 spd = 0;


vspd = vspd + grv;

if right
{
	moving = 1;
	spd = .25+spd*1.1;
	image_speed = 5;
	image_xscale = -1;
}

if left 
{
	moving = -1;
	spd = .25+spd*1.1;
	image_speed = 5;
	image_xscale = 1;
}

if nokey 
{
	spd = spd*.9;
	//moving = 0;
	image_speed = 1;
}


if place_meeting(x,y+vspd,Obj_Floor)
{
	while (!place_meeting(x,y+vspd,Obj_Floor))
	{
		y = y + vspd;
	}
	vspd = 0;
}

if place_meeting(x+(spd*moving),y,Obj_Floor)
{
	while (!place_meeting(x+(spd*moving),y,Obj_Floor))
	{
		x = x + (spd*moving);
	}
	spd = 0;
}

if place_meeting(x,y+1,Obj_Floor) && jump
{
	vspd = -jspd;	
}

if screenShake == true
{
camera_set_view_pos(view_camera[0],random_range(-2,2),random_range(-2,2));
}

if restart //&& gameOver == true
{
		room_restart();
}

if vspd >= maxspd || spd >= maxspd
{
	alarm_set(1,-1);	
}

if (vspd <= .01 && spd <= .01)
{
	if alarm[1] == -1 && gameOver = false
	{
			alarm[1] = 1;
	}
}

x = x + spd*moving;
y = y + vspd;
