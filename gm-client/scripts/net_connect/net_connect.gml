/// @desc 서버에 연결합니다.
/// @param {String} 서버아이피	접속할 서버 아이피.	예) "127.0.0.1"
/// @param {Real} 서버포트		접속할 서버 포트.		예) 3001

var res = network_connect_raw(global.patchwire_netSock, argument0, argument1);

if (res < 0) {
	// 서버 연결 실패
    net_handle_command("connectFailed", "");
}
