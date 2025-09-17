if (!global.game_over) {
    other.health -= 20;
    if (other.health <= 0) {
        global.game_over = true;
        with (other) instance_destroy();
    }
    instance_destroy(); // rock disappears
}
