/*
    Author:
        Dmitry Loac.

    Description:
        Define play zones (ColorOrange markers).

    See:
        findEmptyPosition
        isFlatEmpty
        BIS_fnc_findSafePos
        fn_getPlayableMarkers.sqf

    External variables:
        targetDistance / param
        sideDeviation  / param
        targetPosition
        bluePosition
        redPosition
*/

private [
    "_blueDegrees",
    "_redDegrees",
    "_tryForPosition",
    "_blueReady",
    "_redReady",
    "_zoneMarkers"
];

// Count attempts for find positions.
_tryForPosition = 10;

// Flag for side by position ready.
_blueReady = false;
_redReady = false;

// Find all zone markers.
_zoneMarkers = [] call rqf_fnc_getZoneMarkers;

// TODO: Добавить ограничение на количество попыток смены маркеров.
// TODO: Добавить проверку на присутсвие игровых ("ColorOrange") маркеров.

// Get target and start side positions.
while {not _blueReady || not _redReady} do {
    // Get random zone marker.
    _zoneMarker = _zoneMarkers call BIS_fnc_selectRandom;

    // Выбрать случайную позицию в пределах этого маркера для указания цели миссии.
    targetPosition = [[[getMarkerPos _zoneMarker, getMarkerSize _zoneMarker select 0]], ["water", "out"]] call BIS_fnc_randomPos;

    // Reset variables.
    _try = 0;
    _blueReady = false;
    _redReady = false;

    // Find position for blue side.
    while {not _blueReady && _try < _tryForPosition} do {
        _blueDegrees = random 360;
        bluePosition = [
            (targetPosition select 0) + (sin _blueDegrees * targetDistance),
            (targetPosition select 1) + (cos _blueDegrees * targetDistance)
        ];

        // Если в текущей позиции можно спавнится.
        bluePosition = bluePosition findEmptyPosition [0, 10];

        // Установить влаг готовности синих.
        _blueReady = if (count bluePosition > 0) then [{ true }, { false }];

        _try = _try + 1;
    };

    // Поиск позции красных.
    while {not _redReady && _try < _tryForPosition} do {
        _redDegrees = _blueDegrees + 180 + ([sideDeviation * -1, sideDeviation] call BIS_fnc_randomInt);
        redPosition = [
            (targetPosition select 0) + (sin _redDegrees * targetDistance),
            (targetPosition select 1) + (cos _redDegrees * targetDistance)
        ];

        // Если в текущей позиции можно спавнится.
        redPosition = redPosition findEmptyPosition [0, 10];

        // Установить влаг готовности красных.
        _redReady = if (count redPosition > 0) then [{ true }, { false }];

        _try = _try + 1;
    };

    // Если не получается найти позиции для сторон, найти новую цель.
};