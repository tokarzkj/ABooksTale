// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_water_drip(x_spawn, y_spawn, spd, instance_layer = "Instances")
{
	var _water = instance_create_layer(x_spawn, y_spawn, instance_layer, obj_water)
	_water.speed = spd;
}