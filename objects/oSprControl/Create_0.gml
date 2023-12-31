/// @description Insert description here
// You can write your code in this editor
// grab the possible horizontal/vertikal amount and store in the variable (round used if the room height/width is not fully dividable through 16)
var getRoomWidth  = round(room_width/16);
var getRoomHeight = round(room_height/16);



// get the layer and tile id, which we want to use
var lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);


// loop through all possible cells in the tileset

for(   var width  = 0; width  < getRoomWidth;  width++ ){
  for( var height = 0; height < getRoomHeight; height++ ){
	  
	  // pick a number that represent a brush/tile index
	  var quality = choose(
	  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
	  3,3,3,3,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,
	  5,5,5,5,5,5,5,5,5,5,5,5,5,
	  6,6,6,6,6,6,
	  7,7,7,7,7,7,
	  8,9,10,11,8,9,10,11);


       // set this brush/tile index a flip the cell of the tileset to this random one

	 tilemap_set(map_id, quality, width, height   ); 
	  
  }
}