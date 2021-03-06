class Params
{
    class targetSize
    {
        title = "$STR_RQF_params_targetSize";
        values[] = { 50, 100, 150, 200 };
        texts[] = { "50", "100", "150", "200" };
        default = 50;
    };

    class targetDistance
    {
        title = "$STR_RQF_params_targetDistance";
        values[] = { 200, 300, 400, 500, 600 };
        texts[] = { "200", "300", "400", "500", "600" };
        default = 200;
    };

    class sideDeviation
    {
        title = "Side deviation";
        values[] = { -1, 0, 50, 75, 125 };
        texts[] = { "Random", "0", "50", "75", "125" };
        default = 50;
    };

    class sideRatio
    {
        title = "Winner by side ratio in percentages";
        values[] = { 0, 5, 10, 25, 50 };
        texts[] = { "Off", "5", "10", "25", "50" };
        default = 25;
    };

    class sideTimer
    {
        title = "Hold time positions";
        values[] = { 30, 60, 90, 120 };
        texts[] = { "00:30", "01:00", "01:30", "02:00" };
        default = 30;
    };

    class freezeTime
    {
        title = "Freeze time";
        values[] = { 0, 30, 60, 90, 120, 180, 300 };
        texts[] = { "Off", "00:30", "01:00", "01:30", "02:00", "03:00", "05:00" };
        default = 180;
    };

    class playerTags
    {
        title = "Player tags";
        values[] = { 0, 1 };
        texts[] = { "Off", "On" };
        default = 1;
    };

    class envSeason
    {
        title = "Season";
        values[] = { -1, 0, 1, 2, 3 };
        texts[] = { "Random", "Winter", "Spring", "Summer", "Autumn" };
        default = -1;
    };

    class envTime
    {
        title = "Time of day";
        values[] = { -1, 0, 4, 8, 12, 16, 20 };
        texts[] = { "Random", "Dark night", "Early morning", "Morning", "Afternoon", "Sundown", "Night" };
        default = -1;
    };

    class envOvercast
    {
        title = "Overcast";
        values[] = { -1, 0, 0.25, 0.50, 0.75, 1 };
        texts[] = { "Random", "Clear", "Partly Cloudy", "Cloudy", "Overcast", "Storm" };
        default = -1;
    };

    class envFog
    {
        title = "Fog";
        values[] = { -1, 0, 0.25, 0.50, 0.75, 1 };
        texts[] = { "Random", "No", "Little", "Middle", "High", "Full" };
        default = -1;
    };

    class envRain
    {
        title = "Rain";
        values[] = { -1, 0, 1 };
        texts[] = { "Random", "No", "Yes" };
        default = -1;
    };

    class aiEnable
    {
        title = "Enable AI";
        values[] = { 0, 1 };
        texts[] = { "Off", "On" };
        default = 1;
    };

};