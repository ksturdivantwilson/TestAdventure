
event_inherited();




collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
image_speed = 0;
hSpeed = 0;
vSpeed = 0;
aim_dir = 0;
speedWalk = 2.0;
classTimer = 0;
playerMode = 0;

//check step for the changing classes
// init sprites
spriteIdle = sprRogue;
spriteRun = sprRogueRun;
localFrame = 0;


//Weapons
fire_rate = 100;
weapon_dis = 3;
can_fire = true;
proj_speed = 8;
//Knives

myWeapon = instance_create_layer(x, y, "Instances", oKnifeHolster)
cursor_sprite = sprRangeCursor;
window_set_cursor(cr_none);





function collision() {
	
var _tx = x;
var _ty = y;

x = xprevious;
y = yprevious;
	
var _disx = abs(_tx - x);
var _disy = abs(_ty - y);

repeat(_disx){
	if !place_meeting(x + sign(_tx - x), y, oObstacle) x+= sign(_tx - x);
}
repeat(_disy){
	if !place_meeting(x, y + sign(_ty - y), oObstacle) y+= sign(_ty - y);
}
	
}