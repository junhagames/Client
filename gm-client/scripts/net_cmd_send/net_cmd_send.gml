/// @desc 명령어를 서버로 보냅니다
/// @param {ds_map} 명령어
/// @param {Boolean} 명령어정리허용
/// Note: "명령어" 인수가 전달되지 않으면 최근에 작성된 명령어를 서버에 보냅니다.

var dataMap = global.patchwire_netCurrentData;

if (argument_count > 0) {
    dataMap = argument0;
}

// 명령어를 JSON으로 인코딩 합니다
var contentToSend = json_encode(dataMap);

// 명령어를 버퍼에 작성합니다
var buffer = buffer_create(1, buffer_grow, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_string, contentToSend);

// 명령어를 서버에 보냅니다
network_send_raw(global.patchwire_netSock, buffer, buffer_get_size(buffer));

// 버퍼를 삭제합니다
buffer_delete(buffer);

// 기본으로 명령어가 자동 정리됩니다.
if (argument_count <= 1 || !argument1) {
    ds_map_destroy(dataMap);
}

