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
	var _room_name = room_get_name(room)
	
	var _respawn_x = 30;
	var _respawn_y = 940;
	
	switch (_room_name)
	{
		case "Level2":
			_respawn_x = 10;
			_respawn_y = 200;
		break;
	}
	
	instance_create_layer(_respawn_x, _respawn_y, "Instances", obj_main_character,
	{
		image_xscale: 2,
		image_yscale: 2
	});
}