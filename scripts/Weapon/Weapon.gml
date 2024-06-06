/// @param {Struct} data
function Weapon(data) constructor {
	
	unlocked		 = data.unlocked;
	
	weaponId		 = data._id;
	weaponName		 = data._name;
	
	weaponObj		 = data.weaponObj;
	bulletObj		 = data.bulletObj;
	
	reloadTime		 = data.reloadTime;
	timeBetweenShots = data.timeBetweenShots;
	spray			 = data.spray;
	
	bulletsPerShot	 = data.bulletsPerShot;
	magSize			 = data.magSize;
	maxAmmo			 = data.maxAmmo;
	
	currentInMag	 = data.magSize ?? 0;
	currentAmmo		 = data.maxAmmo ?? 0;
	
	damage			 = data.damage;
	
	reload = function() {
		if(currentInMag < magSize) {
			var diff = magSize - currentInMag;
			if(currentAmmo <= diff) 
				diff = currentAmmo;
			currentAmmo -= diff;
			currentInMag += diff;
		}
	}
}


