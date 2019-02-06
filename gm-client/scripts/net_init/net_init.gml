/// @desc 네트워크 설정을 초기화힙니다.

var timeout = 4000;
var blocking = 0;

network_set_config(network_config_connect_timeout, timeout);
network_set_config(network_config_use_non_blocking_socket, blocking);

global.patchwire_netSock = network_create_socket(network_socket_tcp);	// 소켓
global.patchwire_netHandlerMap = ds_map_create();						// 명령어 모음
global.patchwire_connectedStatus = false;								// 서버 연결 상태

enum NetEvent {
    COMMAND		=  0,
    CONNECT		= -1,
    DISCONNECT	= -2,
    CONNECTFAIL	= -3,
    UNKNOW		= -4
}
