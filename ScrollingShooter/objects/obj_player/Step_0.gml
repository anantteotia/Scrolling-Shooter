if (global.game_over) exit;
// Reset horizontal speed
hsp = 0;

// Horizontal movement
if (keyboard_check(vk_left))  hsp = -max_speed;
if (keyboard_check(vk_right)) hsp =  max_speed;

// Vertical acceleration / deceleration
if (keyboard_check(vk_up)) {
    vsp = clamp(vsp - accel, -max_speed, max_speed);
} else if (keyboard_check(vk_down)) {
    vsp = clamp(vsp + accel, -max_speed, max_speed);
} else {
    // slow down to 0
    if (vsp > 0) vsp = max(0, vsp - accel);
    if (vsp < 0) vsp = min(0, vsp + accel);
}

// Apply movement
x += hsp;
y += vsp;

// Keep player inside the room
x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height/2, room_height - sprite_height/2);

// Shooting
if (fire_timer > 0) fire_timer--;

if (keyboard_check(vk_space) && fire_timer <= 0) {
    instance_create_layer(x, y - sprite_height/2, "Instances", obj_bullet_player);
    fire_timer = fire_rate;
}
audio_play_sound(snd_shoot, 0, false);
