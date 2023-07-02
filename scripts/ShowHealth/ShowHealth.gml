// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShowHealth(){

if hp != hpMax and hp > 0 {
	draw_healthbar(x-7, y-16, x+7, y+16, hp/hpMax * 100, $003300, $3232FF, $00B200, 0, 1, 1);
}

}