//inputs
inLeft = input_check("left");
inRight = input_check("right");
inUp = input_check("up");
inDown = input_check("down");
shoot = input_check("shoot");
keyMenu = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,inRight - inLeft,inDown - inUp);
inputMagnitude = (inRight - inLeft != 0) || (inDown - inUp != 0);

// Mouse Direction and weapon direction
aim_dir = point_direction(x,y,mouse_x,mouse_y);



//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk,inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk,inputDirection);

PlayerCollision();

draw_text_scribble(10, 10, "[fnt_large][c_red][fa_left]Hello world!");

// checks for attack
CheckFire();


// update sprite index

var _oldSprite = sprite_index;

if (inputMagnitude != 0)
{
	direction = inputDirection;
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if(_oldSprite != sprite_index) localFrame=0;

//update image index
PlayerAnimateSprite();

//change class timer
classTimer +=1;
if(classTimer == 240)
{
	if(playerMode ==2)
	{
		playerMode = 0;
	}
	else
	{
		playerMode++;
	}
	classTimer = 0;
}
// class change sprite
if playerMode = 0 {
spriteIdle = sprRogue;
spriteRun = sprRogueRun;
weapon_dis = 3;
myWeapon.sprite_index = sprKnifeHolster
	myWeapon.image_xscale = 1;
	myWeapon.image_yscale = 1;
	myWeapon.depth = depth- 1;
myWeapon.image_angle = aim_dir;
}
if playerMode = 1 
{
	spriteIdle = sprMage;
	spriteRun = sprMageRun;
	myWeapon.sprite_index = sprFireHolster;
	myWeapon.image_xscale = 0.5;
	myWeapon.image_yscale = 0.5;
	myWeapon.image_angle = 0;
	show_debug_message(aim_dir);
	if(aim_dir <= 180)
	{
		myWeapon.depth = depth + 1;	
	}
	else
	{
		myWeapon.depth = depth - 1;	
	}
	weapon_dis = 10;
	
}
if playerMode = 2
{
	spriteIdle = sprRogue;
	spriteRun = sprRogueRun;
	
}