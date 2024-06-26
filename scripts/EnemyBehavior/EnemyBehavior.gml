// The two states an enemy can be in
enum EnemyState {
	Idle,	// Hasn't noticed the player yet
	Alert	// Actively chasing the player
};


/// @func	checkForPlayer(spd)
/// @desc	Checks if the player is in the enemy's detection range
/// @arg	{Real} spd The speed at which the enemy is chasing the player. Defaults to 1.5
function checkForPlayer(spd = 1.5) {
	var dist = distance_to_object(obj_Player);
	
	// can we start chasing ?
	if((dist <= alertRadius) or 
		state == EnemyState.Alert) and 
		dist > attackDist
	{
		state = EnemyState.Alert;	
		
		// should we calc path ?
		if(calcPathTimer-- <= 0) {
			// reset timer
			calcPathTimer = calcPathDelay;
		
			// check if we can make a path to the player
			var playerFound = mp_grid_path(
				global.mpGrid,
				path,
				x, y,
				obj_Player.x, obj_Player.y,
				true
			);
	
			if(playerFound) {
				path_start(path, spd, path_action_stop, false);	
			}	
		}
	} else {
		if(dist <= attackDist) {
			path_end();	
		}
		if(dist > alertRadius) {
			state = EnemyState.Idle;	
		}
	}
}