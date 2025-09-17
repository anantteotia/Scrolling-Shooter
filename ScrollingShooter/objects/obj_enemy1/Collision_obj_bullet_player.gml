// destroy the bullet
with (other) instance_destroy();

// add score
global.score += 10;

// create explosion
instance_create_layer(x, y, "Instances", obj_explosion_enemy);

// destroy enemy
instance_destroy();