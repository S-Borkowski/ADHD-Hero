alarm[0] = 10 * room_speed;

switch (room) {
	case rm_Title: 
		//IF YOU CLICK ON THE MIDDLE OF SCREEN
		if ((115 < mouse_x) and (115 < mouse_y) and (mouse_x < 140) and (mouse_y < 140)) {
			room_goto(rm_Game);
			drawText = "aboutStart";
		}
		else {
			pointlessClicks ++;
			if (pointlessClicks == 10) {
				layer_set_target_room(rm_Death);
				lay_id = layer_get_id("Background");
				layer_background_create(lay_id, spr_death);
				layer_reset_target_room();
		
				room_goto(rm_Death);
				drawText = "aboutPointlessDeath";
			}
		}; break;
	case rm_Game:
		if (instance_position(mouse_x, mouse_y, obj_pickable) != noone) {
			switch (sprite_get_name(obj_pickable.sprite_index)) {
				//PICK UP
					case "sprite10": instance_destroy(instance_position(mouse_x, mouse_y, obj_pickable)); obj_BP.picked = true; break;
				//DEATH
					case "spr_poisonousRock": 
						layer_set_target_room(rm_Death);
						lay_id = layer_get_id("Background");
						layer_background_create(lay_id, spr_poisonedDeath);
						layer_reset_target_room();
		
						room_goto(rm_Death);
						drawText = "aboutPoisonousRockDeath";
						break;
			}
		}
		else if (instance_position(mouse_x, mouse_y, obj_BPItem) != noone) {
			switch (sprite_get_name(obj_BPItem.sprite_index)) {
				//DEATH
				case "spr_torch": 
					layer_set_target_room(rm_Death);
					lay_id = layer_get_id("Background");
					layer_background_create(lay_id, spr_burnDeath);
					layer_reset_target_room();
		
					room_goto(rm_Death);
					drawText = "aboutTorchBurnDeath";
					break;
			}
		}
		else if (instance_position(mouse_x, mouse_y, obj_gateway) != noone) {
			switch (level) {
				case 1: 
					if (obj_gateway.clicks == 0) {
						obj_gateway.clicks ++;
						drawText = "aboutOpenCellDoor1";
					}
					else {
						drawText = "aboutOpenCellDoor2";
						obj_gateway.clicks = 0;
						level = 2;
					}; break;
			}
		}
		else {
			pointlessClicks ++; 
			drawText = "aboutPointlessClick";
			if (pointlessClicks == 10) {
				layer_set_target_room(rm_Death);
				lay_id = layer_get_id("Background");
				layer_background_create(lay_id, spr_death);
				layer_reset_target_room();
		
				room_goto(rm_Death);
				drawText = "aboutPointlessDeath";
			}
		}; break;
	case rm_Death: game_restart(); break;
}