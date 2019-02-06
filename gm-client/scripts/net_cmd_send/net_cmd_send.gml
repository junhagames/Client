/// @desc 명령어를 서버로 보냅니다
/// @param {ds_map} 명령어

var dataMap = argument0;

// 명령어를 JSON으로 인코딩합니다
var contentToSend = json_encode(dataMap);

// 명령어를 버퍼에 작성합니다
var buffer = buffer_create(1, buffer_grow, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_string, contentToSend);

// 명령어를 서버에 보냅니다
network_send_raw(global.patchwire_netSock, buffer, buffer_get_size(buffer));

// 메모리를 정리합니다 
buffer_delete(buffer);
ds_map_destroy(dataMap);

