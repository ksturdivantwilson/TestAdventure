// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShowHealth(){

if hp != hpMax and hp > 0 {
	draw_healthbar(x-3, y-5, x+3, y+5, hp/hpMax * 100, $003300, $3232FF, $00B200, 0, 1, 1);
}

}