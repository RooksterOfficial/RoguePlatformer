//draw_rectangle(Obj_Rogue.x-6,Obj_Rogue.y-18,Obj_Rogue.x+6,Obj_Rogue.y,c_red);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if gameOver == true
{
	draw_set_halign(fa_center);
	draw_text_ext(room_width/2,room_height/10,"GAME OVER      'R' TO RESTART",16,150);
}