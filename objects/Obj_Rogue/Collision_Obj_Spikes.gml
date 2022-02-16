//alarm to turn off cam shake
alarm[0] = room_speed * .5;	
gameOver = true;
screenShake = true;

//Spawn particle
part_particles_create(global.ExplodeSystem, x, y , global.Part_Explode, 80)


//faked death
x = 10000;
y = 10000;

