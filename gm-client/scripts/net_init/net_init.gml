/// @desc 네트워크 설정을 초기화힙니다.
/// @param {Real} 서버연결제한시간	서버에 연결하는 최대 제한시간을 설정합니다.	기본값: 4000
/// @param {Boolean} 논블로킹		논블로킹을 사용할지 설정합니다.				기본값: true

var timeout = 4000;
var blocking = 0;

if (argument_count > 0) {
    timeout = argument0;
}

if (argument_count > 1) {
    if (argument1) {
        blocking = 0;
    }
	else {
        blocking = 1;
    }
}

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
