// Glass Balls: a glass sphere made in Blender (Principled BSDF, Transmission 1, IOR 1.46), worn around the ball. The
// host turns Blender's glass into real glass: it bends the track behind it and reflects the track around it live.

import bool AddBall(const string &in, const string &in, const string &in, const string &in, const string &in) from "cosmetic-kit";

// The clear ball, then the tinted ones: the same sphere, its glass coloured (smoke is a little cloudier, so its grey
// shows). Each one loads the sphere, about 10 ms (measured), so they're added one a frame: all at once went over the
// plugin's 50 ms budget and the plugin was stopped before the last ones.
const array<string> kColours = {"red", "orange", "yellow", "green", "cyan", "blue", "purple", "pink", "gold", "smoke"};
int added = -1;

void Main()
{
    string f = Plugins::Folder();
    // No texture (""): the game's own ball is hidden by the model file (ball hidden), the sphere is the whole ball.
    AddBall("glass-balls.glass", "glass ball", "", f + "preview.png", f + "models/glass_ball.txt");
    added = 0;
}

void Update(float dt)
{
    if (added < 0 || added >= int(kColours.length())) return;
    string f = Plugins::Folder();
    string c = kColours[added++];
    AddBall("glass-balls." + c, c + " glass ball", "", f + "previews/" + c + ".png", f + "models/glass_" + c + ".txt");
}
