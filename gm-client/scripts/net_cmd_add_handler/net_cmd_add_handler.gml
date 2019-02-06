/// @desc 새로운 명령어를 만들거나, 기존 명령어에 다른 핸들러(스크립트)를 추가합니다.
/// @param {String} 명령어
/// @param {Script} 핸들러
/// Note: 이 스크립트를 여러 번 호출하여 주어진 명령어에 여러 개의 핸들러를 추가 할 수 있습니다.

if (ds_map_exists(global.patchwire_netHandlerMap, argument0)) {
    var handlerList = ds_map_find_value(global.netHandlerMap, argument0);
    handlerList[array_length_1d(handlerList)] = argument1;
    ds_map_replace(global.patchwire_netHandlerMap, argument0, handlerList);
}
else {
    var handlerList;
    handlerList[0] = argument1;
    ds_map_add(global.patchwire_netHandlerMap, argument0, handlerList);
}

