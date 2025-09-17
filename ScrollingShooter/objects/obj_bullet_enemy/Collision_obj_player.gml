// safety: make sure health exists
if (!variable_instance_exists(other, "health")) other.health = 100;

// damage and remove bullet
other.health -= 10;
instance_destroy();
