if (global.game_over) exit;
if (++timer >= interval) {
    var sx = irandom_range(margin, room_width - margin);
    instance_create_layer(sx, -32, "Instances", spawn_object);
    timer = 0;
}
// --- ramp difficulty over time ---
difficulty_tick++;
if (difficulty_tick >= ramp_every) {
    difficulty_tick = 0;
    if (interval > min_interval) interval -= 5; // spawn faster
}
if (irandom(100) < 2) { // 2% chance per step
    var rx = irandom_range(32, room_width - 32);
    instance_create_layer(rx, -32, "Instances", obj_rock);
}
