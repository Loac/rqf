/*
    Author:
        Dmitry Loac.

    Param variables:
        targetSize
            Radius of target size.
        targetDistance
            Distance to target.
        sideDeviation
            Deviations of start positions.
        bluePosition
        redPosition
            Coordinates of side start.
        blueTimer
        redTimer
            Side timers.
        blueHold
        redHold
            Flags of side hold positions.
        blueUnits
        redUnits
        blueRatio
        redRatio
        startMission
            Flag to start mission.
        environment
            Array with environment settings.
        blueReady
        redReady
            Flags for ready sides.
        sizePosition
            Size of start side positions. Need for teleport and freeze time.
        aiEnable
            Flag for enable or disable AI.

    See:
        https://community.bistudio.com/wiki/6thSense.eu:EG
*/

if (isServer) then {
    /*
        Set parameters.
    */
    _handle = [] execVM "init\init_params.sqf"; waitUntil { scriptDone _handle };

    // Set and broadcast flag startMission and targetDistance value.
    _handle = [
        ["startMission", false],
        ["blueReady", false],
        ["redReady", false],
        ["environment", []],
        ["targetDistance"],
        ["freezeTime"],
        ["sizePosition"],
        ["aiEnable"],
        ["playerTags"]
    ] call rqf_fnc_broadcast;

    /*
        Set spawn and target positions:
            targetPosition
            bluePosition
            redPosition
    */
    _handle = [] execVM "init\init_zones.sqf"; waitUntil { scriptDone _handle };

    /*
        Initialize environment: fog, time and etc.
    */
    _handle = [] execVM "init\init_environment.sqf";

    /*
        Set triggers.
    */
    _handle = [] execVM "init\init_triggers.sqf";

    /*
        Teleport all units to start positions.
    */
    _handle = [] execVM "init\init_positions.sqf";

    /*
        Set arbiter.
    */
    _handle = [] execVM "init\init_arbiter.sqf";

    /*
        Set markers for players.
    */
    _handle = [] execVM "init\init_markers.sqf";

    /*
        Add waypoints for AI.
    */
    _handle = [] execVM "init\init_ai.sqf";

    /*
        Init freeze time.
    */
    if (freezeTime > 0) then {
        _handle = execVM "init\init_freeze.sqf";
    };

    // Flag to start mission.
    _handle = [["startMission", true]] call rqf_fnc_broadcast;
};

if (not isDedicated) then {
    /*
        Magic.
    */
    waitUntil { not isNull Player and isPlayer Player };

    /*
        Client side procedures.
    */
    _handle = [] execVM "init\init_client.sqf";

    /*
        Development.
    */
    if (false) then {
        _handle = [] execVM "init\init_devel.sqf";
    };
};

// Перенос на шаблон на НА.

// Фикс спавна в камнях.

// Расширенный брифинг.

// Переместить камеру к таргету.

// Добавить параметры дальности, травы, вида от третьего лица.

// Локализация.

// Телепорт группами.

// Больше разных сообщений в дебрифинг.

// Спрятать позицию игрока на карте.

// Доработать ботов.

// Создание техники.

// Проверить работу setPlayable.

// Добавить случайность для других параметров, расстояние, отклонение и так далее.

// Ручная установка цели.

// Возможно стоит переделать работу параметра sideDeviation.

// Изменить способ поиска играбельных маркеров: если ни одного играбельного маркера на карте нет
    // значит определить место случайно.

// Добавить неиграбельные маркера: если точка спавна или старта попадает в область этого маркера
    // искать новую точку.

// На время брифинга отключить повреждения.

// Hide player's waypoints
// {_x setWaypointVisible false} forEach (waypoints group BIS_inf + waypoints BIS_BLU_group2);

// Возможно, движение карты в брифинге.
// x = [] spawn
// {
//     (findDisplay 37 displayCtrl 51) ctrlmapAnimAdd [1, 0.2, markerPos "BIS_mrkBriefingCenter"];
//     ctrlmapAnimCommit (findDisplay 37 displayCtrl 51);
// };

// _video = ["A3\Missions_F_EPA\video\A_in_intro.ogv"] spawn BIS_fnc_playVideo;