var _dx = 0;
var _dy = guiH * 0.7;
var _boxW = guiW;
var _boxH = guiH - _dy;

draw_sprite_stretched(spr_dialogueBox, 0, _dx, _dy, _boxW, _boxH);

_dx += 16;
_dy += 16;

draw_set_font(fnt_dialogueFont);

var _name = messages[currentMessage].name;
draw_set_colour(global.charColor[$ _name]);
draw_text(_dx, _dy, _name);
draw_set_colour(c_white);

_dy += 40;

draw_text_ext(_dx, _dy, drawMessage, -1, _boxW - _dx * 2);
