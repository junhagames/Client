net_init();
net_connect("127.0.0.1", 3001);

net_cmd_add_handler("connected", handle_connected);
net_cmd_add_handler("createPlayer", handle_createPlayer);
net_cmd_add_handler("movePlayer", handle_movePlayer);
