/// @description Insert description here
// You can write your code in this editor
obj_game.character_lives--;
if (obj_game.character_lives == 0)
{
		
	obj_game.game_result = GAME_STATUS.LOST;
	room_goto(0);
}
else
{
	instance_create_layer(30, 940, "Instances", obj_main_character,
	{
		image_xscale: 2,
		image_yscale: 2
	});
}