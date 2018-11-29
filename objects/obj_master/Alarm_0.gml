if(room != rm_Death) {
	layer_set_target_room(rm_Death);
	lay_id = layer_get_id("Background");
	layer_background_create(lay_id, spr_death);
	layer_reset_target_room();

	room_goto(rm_Death);
	drawText = "aboutBoredomDeath";
}