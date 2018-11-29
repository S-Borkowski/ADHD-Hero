alarm[0] = 10 * room_speed;
pointlessClicks = 0;

drawText = "";
text = "";

using = "nothing";
level = 1;
//show_debug_overlay(true);

global.Font = font_add_sprite_ext(spr_font, "abcdefghijklmnopqrstuvwxyz!?.,'-() 0123456789", true, 2);
global.deathFont = font_add_sprite_ext(spr_deathFont, "abcdefghijklmnopqrstuvwxyz!?.,'-() 0123456789", true, 2);
draw_set_font(global.Font);