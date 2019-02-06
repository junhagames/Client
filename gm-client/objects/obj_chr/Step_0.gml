var key_left	= keyboard_check(ord("A"));
var key_right	= keyboard_check(ord("D"));
var key_up		= keyboard_check(ord("W"));
var key_down	= keyboard_check(ord("S"));

var hspd = key_right - key_left;
var vspd = key_down - key_up;

// 서버에 위치 전송
if (hspd != 0 || vspd != 0) { 
	var cmd_move = net_cmd_init("move");
	cmd_move[? "hspd"] = hspd;
	cmd_move[? "vspd"] = vspd;
	net_cmd_send(cmd_move);
}
