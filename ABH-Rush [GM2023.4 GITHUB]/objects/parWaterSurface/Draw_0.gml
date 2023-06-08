/// @description Repeat Draw the Surface Sprite to the Water

var i;
for (i=0; i<=parWater.sprite_width; i+=sprite_width)
draw_sprite_ext(sprite_index,image_index,x+i,y,1,1,0,c_white,1);