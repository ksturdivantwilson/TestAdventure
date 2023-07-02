/// @description Insert description here
// You can write your code in this editor
if(oPlayer.playerMode = 0)
{
	sprite_index = sprKnife;
}
if(oPlayer.playerMode = 1)
{
	sprite_index = sprFireHolster;
}

var _dis = point_distance(xstart, ystart, x, y);
if _dis > range {
	knife_die();
}