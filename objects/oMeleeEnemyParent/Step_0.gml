/// @description Insert description here
// You can write your code in this editor


switch(state){
	
	case states.MOVE:
	CheckPlayer();
	EnemyAnim();
	CheckFacing();
	break;
	
	case states.ATTACK:
	EnemyAnim();
	break;
	
	case states.DIE:
	
	break;

}

