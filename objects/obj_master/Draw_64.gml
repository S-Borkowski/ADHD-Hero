switch(drawText) {
	//CLICKING
		case "aboutStart": 
			draw_text_ext(32, 178, "you don't remember how you got here. all you remember is falling, endless falling.", 16, 192); 
			break;
		case "aboutPointlessClick": 
			draw_text_ext(32, 178, "why? what for?.", 16, 192); 
			break;
		case "aboutOpenCellDoor1": 
			draw_text_ext(32, 178, "it's closed.", 16, 192); 
			break;
		case "aboutOpenCellDoor2": 
			draw_text_ext(32,178, "turns out you had to pull not push.", 16, 192); 
			break;
	//LOOKING
		case "aboutLookAtTorch": 
			draw_text_ext(32, 178, "it's a torch.", 16, 192); 
			draw_text_ext(32, 194, "be careful not to burn yourself.", 16, 192); 
			break;
		case "aboutLookAtCellDoor": 
			draw_text_ext(32, 178, "cell door.", 16, 192); 
			draw_text_ext(32, 194, "appears to be closed. maybe i can find key somewhere near...?", 16, 192); 
			break;
		case "aboutLookAtPoisonousRock": 
			draw_text_ext(32, 178, "it's a rock.", 16, 192); 
			draw_text_ext(32, 194, "big enough to hide small object under it.", 16, 192); 
			break;
	//DEATH SCREEN
		case "aboutBoredomDeath": 
			draw_set_font(global.deathFont); 
			text = "you got bored";
			draw_text_ext(room_width/2 - string_width(text)/2, 86, text, 22, string_width(text)); 
			text = "and died";
			draw_text_ext(room_width/2 - string_width(text)/2, 108, text, 22, string_width(text)); 
			break;
		case "aboutPointlessDeath": 
			draw_set_font(global.deathFont); 
			text = "you realized that";
			draw_text_ext(room_width/2 - string_width(text)/2, 64, text, 22, string_width(text)); 
			text = "your actions are pointless";
			draw_text_ext(room_width/2 - string_width(text)/2, 86, text, 22, string_width(text));
			text = "and died";
			draw_text_ext(room_width/2 - string_width(text)/2, 108, text, 22, string_width(text)); 
			break;
		case "aboutTorchBurnDeath": 
			draw_set_font(global.deathFont); 
			draw_text_ext(62, 86, "you burned yourself", 22, 131); 
			draw_text_ext(103, 108, "and died", 22, 50); 
			break;
		case "aboutPoisonousRockDeath": 
			draw_set_font(global.deathFont); 
			draw_text_ext(26, 86, "you touched the poisonous rock", 22, 204); 
			draw_text_ext(103, 108, "and died", 22, 50); 
			break;
}

//draw_text(32, 178, pointlessClicks);