/// @description Insert description here
// You can write your code in this editor
// the if statement works for checking which side the player is on
show_debug_message(point_direction(x,y,oPlayer.x,oPlayer.y) < 280 && point_direction(x,y,oPlayer.x,oPlayer.y) > 90);
if(point_direction(x,y,oPlayer.x,oPlayer.y) < 280 && point_direction(x,y,oPlayer.x,oPlayer.y) > 90)
	{
		image_xscale = 1;
	}
	else
	{
		image_xscale = -1;
	}
	
ShowHealth();

switch(state){
	
	case states.MOVE:
	CheckPlayer();
	EnemyAnim();
	
	break;
	
	case states.ATTACK:
	EnemyAnim();
	
	break;
	
	case states.DIE:
	instance_destroy();
	break;

}

