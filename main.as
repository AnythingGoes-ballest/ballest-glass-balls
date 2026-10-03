// Glass Balls: a glass sphere made in Blender (Principled BSDF, Transmission 1, IOR 1.46), worn around the ball. The
// host turns Blender's glass into real glass: it bends the track behind it and reflects the track around it live.

import bool AddBall(const string &in, const string &in, const string &in, const string &in, const string &in) from "cosmetic-kit";

void Main()
{
    string f = Plugins::Folder();
    // No texture (""): the game's own ball stays clear glass, inside the Blender sphere.
    AddBall("glass-balls.glass", "glass ball", "", f + "preview.png", f + "models/glass_ball.txt");
    // Tinted glass: the same sphere, its glass coloured (smoke is a little cloudier, so its grey shows).
    AddBall("glass-balls.red", "red glass ball", "", f + "previews/red.png", f + "models/glass_red.txt");
    AddBall("glass-balls.orange", "orange glass ball", "", f + "previews/orange.png", f + "models/glass_orange.txt");
    AddBall("glass-balls.yellow", "yellow glass ball", "", f + "previews/yellow.png", f + "models/glass_yellow.txt");
    AddBall("glass-balls.green", "green glass ball", "", f + "previews/green.png", f + "models/glass_green.txt");
    AddBall("glass-balls.cyan", "cyan glass ball", "", f + "previews/cyan.png", f + "models/glass_cyan.txt");
    AddBall("glass-balls.blue", "blue glass ball", "", f + "previews/blue.png", f + "models/glass_blue.txt");
    AddBall("glass-balls.purple", "purple glass ball", "", f + "previews/purple.png", f + "models/glass_purple.txt");
    AddBall("glass-balls.pink", "pink glass ball", "", f + "previews/pink.png", f + "models/glass_pink.txt");
    AddBall("glass-balls.gold", "gold glass ball", "", f + "previews/gold.png", f + "models/glass_gold.txt");
    AddBall("glass-balls.smoke", "smoke glass ball", "", f + "previews/smoke.png", f + "models/glass_smoke.txt");
}
