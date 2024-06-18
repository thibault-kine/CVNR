global.bulletLayer = layer_create(-10, "BulletLayer");
global.weaponLayer = layer_create(-5, "WeaponLayer");

weaponList = {
	revolver: new Weapon({
		unlocked: true,
		_id: 0,
	    _name: "Revolver",
	    bulletObj: obj_Bullet1,
	    weaponObj: obj_Revolver,
	    reloadTime: 100,
	    timeBetweenShots: 0.4,
	    spray: 10,
	    damage: 5,
	    bulletsPerShot: 1,
	    magSize: 6,
	    maxAmmo: 18
	}),
	shotgun: new Weapon({
		unlocked: true,
		_id: 1,
	    _name: "Shotgun",
	    bulletObj: obj_Bullet1,
	    weaponObj: obj_Shotgun,
	    reloadTime: 150,
	    timeBetweenShots: 0.9,
	    spray: 15,
	    damage: 2,
	    bulletsPerShot: 4,
	    magSize: 2,
	    maxAmmo: 24
	}),
	rifle: new Weapon({
		unlocked: false,
		_id: 2,
		_name: "Rifle",
		bulletObj: obj_Bullet1,
	    weaponObj: obj_Shotgun,
	    reloadTime: 1.7,
	    timeBetweenShots: 0.8,
	    spray: 10,
	    damage: 1,
	    bulletsPerShot: 5,
	    magSize: 30,
	    maxAmmo: 150
	})
}

global.WEAPON_LIST = ds_list_create()
ds_list_add(global.WEAPON_LIST,
	weaponList.revolver,
	weaponList.shotgun,
	weaponList.rifle
);

cursor_sprite = spr_Crosshair;
window_set_cursor(cr_none);


currWpn = ds_list_find_value(global.WEAPON_LIST, 0);
wpnSelect = 1;
wpnMax = ds_list_size(global.WEAPON_LIST)

// Initialisation de currWpn
for (var i = 0; i < wpnMax; i++) {
    var weapon = ds_list_find_value(global.WEAPON_LIST, i);
    if (weapon.unlocked && weapon.currentAmmo > 0) {
        currWpn = weapon;
        break;
    }
}

// Création de l'instance de l'arme courante
curr_wpn = instance_create_layer(x, y, "Weapons", currWpn.weaponObj);