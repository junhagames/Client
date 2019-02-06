/// @desc 명령어를 실행 합니다.
/// @param {String} 명령어
/// @param {ds_map} 데이터

if (ds_map_exists(global.patchwire_netHandlerMap, argument0)) {
    var handlerList = ds_map_find_value(global.patchwire_netHandlerMap, argument0);
    var handlerListLength = array_length_1d(handlerList);
    
    for (var i = 0; i < handlerListLength; i++) {
        var handler = handlerList[i]
        script_execute(handler, argument1);
    }
}

