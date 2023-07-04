/// @description Insert description here
// You can write your code in this editor
if(oPlayer.playerMode = 0)
{
	sprite_index = sprKnife;
	object_set_sprite(oProjDie,sprKnifeDie);
}
if(oPlayer.playerMode = 1)
{
	sprite_index = sprFireHolster;
	object_set_sprite(oProjDie, sprFire);
}

if (oPlayer.playerMode = 2)
{
	sprite_index = sprAxe;
	
}

var _dis = point_distance(xstart, ystart, x, y);
if _dis > range {
	knife_die();
}