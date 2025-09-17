// obj_enemy1 : Collision with obj_player

// make sure health exists (safety)
if (!variable_instance_exists(other, "health")) other.health = 100;

// damage the player
other.health -= 30;

// if player's health is 0 or less, end the game (do not restart yet)
if (other.health <= 0) {
    instance_create_layer(other.x, other.y, "Instances", obj_explosion_enemy);
    with (other) instance_destroy();
    global.game_over = true;
}

// explosion at enemy position
instance_create_layer(x, y, "Instances", obj_explosion_enemy);

// destroy enemy
instance_destroy();