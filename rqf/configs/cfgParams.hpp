class Params
{
    class targetSize
    {
        title = "Target size";
        values[] = { 10, 50, 100, 150, 200 };
        texts[] = { "10", "50", "100", "150", "200" };
        default = 50;
        code = "targetSize = %1";
    };

    class targetDistance
    {
        title = "Target distance";
        values[] = { 100, 200, 300, 500, 600 };
        texts[] = { "100", "200", "300", "400", "500", "600" };
        default = 200;
        code = "targetDistance = %1";
    };

    class sideDeviation
    {
        title = "Side deviation";
        values[] = { 0, 50, 100, 200 };
        texts[] = { "0", "50", "100", "200" };
        default = 50;
        code = "sideDeviation = %1";
    };

    class sideTimer
    {
        title = "Hold time positions";
        values[] = { 10, 30, 60, 90, 120 };
        texts[] = { "00:10", "00:30", "01:00", "01:30", "02:00" };
        default = 10;
        code = "blueTimer = %1; redTimer = %1;";
    };

    class missionWeather
    {
        title = "Weather";
        values[] = { true, false };
        texts[] = { "Yes", "No" };
        default = false;
        code = "missionWeather = %1";
    };

    class missionDayTime
    {
        title = "Time of day";
        values[] = { 1, -8, -6, 0, 8, 13, 2 };
        texts[] = { "Random", "Early Morning", "Morning", "Noon", "Sundown", "Night with Full Moon", "Dark Night" };
        default = false;
        code = "missionDayTime = %1";
    };

    class missionFog {
        title = "Fog";
        values[] = { -1, 0, 0.25, 0.50, 0.75, 1 };
        texts[] = { "Random", "No", "Little", "Middle", "High", "Full" };
        default = 0;
        code = "randomDayTime = %1";
    };

    class missionWind {
        title = "Wind";
        values[] = { -1, 0, 0.25, 0.50, 0.75, 1 };
        texts[] = { "Random", "No", "Little", "Middle", "High", "Full" };
        default = 0;
        code = "randomDayTime = %1";
    };

    class missionRain {
        title = "Rain";
        values[] = { -1, 0, 1 };
        texts[] = { "Random", "No", "Yes" };
        default = 0;
        code = "randomDayTime = %1";
    };

      class missionWeather
      {
        title = "Weather:";
        values[] = { 2, 0, 3, 0.5, 0.75, 1 };
        texts[] = { "Random", "Clear", "Partly Cloudy", "Cloudy", "Overcast", "Storm" };
        default = 2;
      };

    class blueAI {
        title = "Enable blue side AI";
        values[] = { true, false };
        texts[] = { "Yes", "No" };
        default = false;
        code = "blueAI = %1";
    };

    class redAI {
        title = "Enable red side AI";
        values[] = { true, false };
        texts[] = { "Yes", "No" };
        default = false;
        code = "redAI = %1";
    };
};