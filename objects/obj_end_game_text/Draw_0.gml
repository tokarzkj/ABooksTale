/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);

var _text = @"Thank you for playing my small game! I hope you had an enjoyable time as I figure out game development
and built my own sprites. I built this game to bring awareness to an event for an organization called Legacy Unbound.
Hopefully this game inspires you to try building one of your own!"
draw_text_ext_transformed(x, y, _text, -1, room_width / 2.5, 1, 1, -3);
draw_self();