


function CheckPlayer(){

enemySpeed = 1.2;
move_towards_point(oPlayer.x, oPlayer.y, enemySpeed);

var _dis = distance_to_object(oPlayer);
var _attackDis = 18;

if _dis <= _attackDis {

	enemySpeed = 0;
	state = states.ATTACK;
	
}
}

function CheckFacing(){
	
var _facing = sign(x - xp);
if _facing != 0 facing = _facing;

}


function EnemyAnim(){

switch(state){
	
	case states.MOVE:
//Enemy moves toward player
CheckPlayer();
	sprite_index = s_walk
	break;
	case states.ATTACK:
	sprite_index = s_attack
	break;
	case states.DIE:
	
	break;
}

xp = x;
yp = y;

}