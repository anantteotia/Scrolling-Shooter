// Move straight down only
y += vsp;

// Kill when off-screen
if (y > room_height + sprite_height) {
    instance_destroy();
}
