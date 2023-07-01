collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
image_speed = 0;
hSpeed = 0;
vSpeed = 0;
aim_dir = 0;
speedWalk = 2.0;

spriteRun = sPlayerRun
spriteIdle = sPlayer;
localFrame = 0;




//Weapons
fire_rate = 120;

//Knives
knives_dis = 3;
can_fire = true;
knife_speed = 8;

myKnives = instance_create_layer(x, y, "Instances", oKnifeHolster)

cursor_sprite = sprRangeCursor;

window_set_cursor(cr_none);