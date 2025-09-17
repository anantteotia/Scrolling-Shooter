if (!global.game_over) {
    fire_timer++;
    if (fire_timer >= fire_interval) {
        instance_create_layer(x, y + 16, "Instances", obj_bullet_enemy);
        fire_timer = 0;
        fire_interval = irandom_range(30, 60); // vary the cadence
    }
}
