hp = 100;
moveSpeed = 2.5;
attackDist = 18; // attack distance

// Enemy AI
state = EnemyState.Idle;
alertRadius = 150;
path = path_add();
calcPathDelay = 30; //for optimization, we don't want our enemies to calculate each frame at once
calcPathTimer = irandom(60);