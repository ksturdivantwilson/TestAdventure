// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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