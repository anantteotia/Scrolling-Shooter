// configurable defaults (can override per instance)
interval = 60;                // frames between spawns
timer = 0;
spawn_object = obj_enemy1;    // what to spawn (override per instance)
margin = 32;                  // keep inside screen
// --- difficulty settings ---
min_interval   = 20;           // fastest we'll allow (frames)
difficulty_tick = 0;           // counts frames for ramping
ramp_every     = room_speed * 10; // every ~10 seconds
