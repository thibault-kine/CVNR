/// @desc Spawns object at random position
/// @arg {Asset.GMObject} object
function randomSpawn(object) {
	var randX = random_range(32, room_width - 32);
	var randY = random_range(-32, room_height + 32);

	if(!place_empty(randX, randY, obj_Wall) and !place_empty(randX, randY, obj_Pickup))
		instance_create_layer(randX, randY, "Instances", object);
}