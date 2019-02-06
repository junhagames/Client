/// @desc 서버에 보낼 명령을 초기화 합니다.
/// @param {String} 명령어

global.patchwire_netCurrentData = ds_map_create();
ds_map_add(global.patchwire_netCurrentData, "command", argument0);
return global.patchwire_netCurrentData;

