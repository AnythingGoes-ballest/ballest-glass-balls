# Glass Balls

A cosmetic plugin for the [Ballest plugin manager](https://github.com/AnythingGoes-ballest/ballest-plugin-manager): real
glass balls for Ballest of Them All, clear or in 10 colours (red, orange, yellow, green, cyan, blue, purple, pink, gold
and smoke). They're see-through, bend the track behind them like a solid glass sphere, and reflect the track around you
as you roll.

The sphere is a Blender model (`models/glass_sphere.glb`, a Principled BSDF with Transmission 1, IOR 1.46 and
roughness 0.015), exported as glTF. The plugin manager reads Blender's glass and draws it as refracting glass with a
live reflection of the ball's surroundings. The coloured balls use the same sphere with a tinted glass material
(`models/glass_<colour>.txt`).

## Install

In the game: footer **plugins** > **browse** > Glass Balls > **install**, then pick a glass ball in the custom section
of the Customize page. Needs plugin manager host 0.23.2 or newer and the Cosmetic Kit plugin.

## License

MIT
