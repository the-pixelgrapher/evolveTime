// play a sound of a defined type

var sound_type;
sound_type=argument0;

if global.sound == 1 {
	switch (sound_type)
	{
	
		case "tap": // navigate menu
		audio_play_sound(sfx_tap,64,0);
		break;
		
		case "select": // select menu
		audio_play_sound(sfx_select,64,0);
		break;
		
		case "music_menu": //background music
		if (!audio_is_playing(sfx_menu_mus0) and global.music == 1)
		{
			audio_stop_sound(sfx_level_mus0);
			audio_play_sound(sfx_menu_mus0,64,1);
		}
		break;
		
		case "music_level": //background music
		audio_sound_gain(sfx_level_mus0, 0.45, 120);
		if (!audio_is_playing(sfx_level_mus0) and global.music == 1)
		{
			audio_stop_sound(sfx_menu_mus0);
			audio_play_sound(sfx_level_mus0,64,1);
		}
		break;
		
		case "capture": // capture animal
		if (!audio_is_playing(sfx_capture))
		{
			audio_play_sound(sfx_capture,64,0);
		}
		break;
		
		case "release": // release animal
		audio_play_sound(sfx_release,64,0);
		break;
		
		case "jump": // jump
		if (object_index == obj_bunny)
		{
			audio_play_sound(sfx_jump_bunny,64,0);
		}
		else
		{
			audio_play_sound(sfx_jump,64,0);
		}
		break;
		
		case "ignite": // salamander fireball
		audio_play_sound(sfx_ignite,64,0);
		break;
		
		case "fire": // burning wood
		audio_play_sound(sfx_fire,64,0);
		break;
		
		case "explosion": // flammable object destroyed
		audio_play_sound(sfx_explosion, 64, 0);
		audio_sound_pitch(sfx_explosion, 1.17 - random(0.33));
		break;
		
		case "complete": // level complete
		//audio_sound_pitch(sfx_complete, 0.875);
		audio_play_sound(sfx_complete,64,0);
		break;
		
		case "death": // player or animal death
		if (!global.is_dead)
		{
			audio_play_sound(sfx_death,64,0);
		}
		break;
	}
}
