// pick a sprite (match your names)
sprite_index = choose(spr_island1, spr_island2);

// draw behind gameplay
depth = 50;

// move straight down at a fixed speed (no side drift)
vsp = 2;      // <- set this to your background scroll speed
hsp = 0;

// keep orientation fixed
image_angle  = 0;

// (optional) remove random scale if you want them uniform
image_xscale = 1;
image_yscale = 1;
