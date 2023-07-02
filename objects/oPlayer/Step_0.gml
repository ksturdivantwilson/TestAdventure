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
myWeapon.image_angle = aim_dir;


//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk,inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk,inputDirection);

PlayerCollision();



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


}
if playerMode = 1 
{
	spriteIdle = sprMage;
	spriteRun = sprMageRun;
	
	
}
if playerMode = 2
{
	spriteIdle = sprRogue;
	spriteRun = sprRogueRun;
	
}