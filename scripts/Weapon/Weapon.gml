/// @param {Struct} data
function Weapon(data) constructor {
	
	unlocked		 = data.unlocked;			// if the player has the weapon in inventory

	weaponId		 = data._id;				// weapon's ID
	weaponName		 = data._name;				// weapon's name
	
	weaponObj		 = data.weaponObj;			// the weapon's object (prefab)
	bulletObj		 = data.bulletObj;			// the bullet's object (prefab, for behavior)
	
	canShoot		 = true;					// if the weapon can shoot (isn't reloading, etc)
	
	reloadTime		 = data.reloadTime;			// the time it takes to reload
	timeBetweenShots = data.timeBetweenShots;	// the time between two shots
	spray			 = data.spray;				// the bullet spray angle
	
	bulletsPerShot	 = data.bulletsPerShot;		// how many bullets per shot
	magSize			 = data.magSize;			// how many shots can be fired (shots < mag)
	maxAmmo			 = data.maxAmmo;			// how many mags can be filled (mags < ammo)
	
	currentInMag	 = data.magSize ?? 0;		// how many in magazine
	currentAmmo		 = data.maxAmmo ?? 0;		// how many in total
	
	damage			 = data.damage;				// weapon damage. will be passed to the bullets
	
	isReloading		 = false;					// if the player is reloading this weapon
	reloadDuration   = 0;						// delta time for reloadTime
	
	
	/// @func reload()
	/// @desc Reloads the weapon
	reload = function() {
		if(currentInMag < magSize and !isReloading) {
			isReloading = true;
			reloadDuration = reloadTime;
		}
	}
	
	/// @func finishReload()
	/// @desc Ends the reload and resets the variables
	finishReload = function() {
		if(isReloading) {
			var diff = magSize - currentInMag;
			if(currentAmmo <= diff) {
				diff = currentAmmo;
			}
			currentAmmo -= diff;
			currentInMag += diff;
			isReloading = false;
			reloadDuration = 0;
		}
	}
}


