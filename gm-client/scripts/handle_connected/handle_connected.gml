var cmd_connected = net_cmd_init("isConnected");
cmd_connected[? "message"] = "Hello world!";
net_cmd_send(cmd_connected);

show_debug_message("Connected!");