net_init(4000, false);
net_connect("127.0.0.1", 3001);

net_cmd_add_handler("connected", handle_connected);
net_cmd_add_handler("chat", handle_chat);