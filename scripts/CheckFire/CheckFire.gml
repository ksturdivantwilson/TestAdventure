// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckFire(){

if mouse_check_button(mb_left){
	if can_fire {
		can_fire = false;
		alarm[0] = fire_rate;
		
		var _dir = point_direction(x,y, mouse_x, mouse_y);
		
		//Rogue attack
		if(playerMode == 0 )
		{
			var _inst = instance_create_layer(x,y, "Weapon", oProj);
			with(_inst) {
				speed = other.proj_speed;
				direction = _dir;
				image_angle = _dir;
				owner_id = other;
				}
		}
		
		//Mage attack
		if(playerMode == 1 )
		{
			var _inst = instance_create_layer(x,y, "Weapon", oProj);
			with(_inst) {
				speed = other.proj_speed;
				direction = _dir;
				image_angle = _dir;
				owner_id = other;
				}
		}
		
		if (playerMode == 2) 
		{
			var _inst = instance_create_layer(x+5,y+5, "Weapon", oProj);
			with(_inst) {
				speed = 0;
				direction = _dir;
				image_angle = _dir;
				owner_id = other;
			}
		}
		
	}
}
}