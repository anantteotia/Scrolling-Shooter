// Spawn islands occasionally
if (irandom(100) < 2) {   // ~2% chance per frame (adjust for more/less)
    var xx = irandom_range(0, room_width);
    instance_create_layer(xx, -32, "Instances", obj_island);
}
