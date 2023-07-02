/// @description Insert description here
// You can write your code in this editor


#region

halfViewWidth = camera_get_view_width(view_camera[0])/2;
halfViewHeight = camera_get_view_height(view_camera[0])/2;
camera_set_view_pos(view_camera[0], x-halfViewWidth,y-halfViewHeight)
#endregion


myWeapon.depth = depth - 1;
myWeapon.x = x + lengthdir_x(weapon_dis, aim_dir);
myWeapon.y = y + lengthdir_x(weapon_dis, aim_dir);



