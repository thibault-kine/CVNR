if mouse_wheel_up()
{
    var currentIndex = ds_list_find_index(global.WEAPON_LIST, currWpn);
    var found = false;

    for (var i = 1; i <= wpnMax; i++) {
        var nextIndex = (currentIndex + i) % wpnMax;
        var nextWeapon = ds_list_find_value(global.WEAPON_LIST, nextIndex);

        if (nextWeapon.unlocked && nextWeapon.currentAmmo > 0) {
            currWpn = nextWeapon;
            found = true;
            break;
        }
    }

    if (found) {
        instance_destroy(curr_wpn);
        curr_wpn = instance_create_layer(x, y, "Weapons", currWpn.weaponObj);
    }
}

if mouse_wheel_down()
{
    var currentIndex = ds_list_find_index(global.WEAPON_LIST, currWpn);
    var found = false;

    for (var i = 1; i <= wpnMax; i++) {
        var prevIndex = (currentIndex - i + wpnMax) % wpnMax;
        var prevWeapon = ds_list_find_value(global.WEAPON_LIST, prevIndex);

        if (prevWeapon.unlocked && prevWeapon.currentAmmo > 0) {
            currWpn = prevWeapon;
            found = true;
            break;
        }
    }

    if (found) {
        instance_destroy(curr_wpn);
        curr_wpn = instance_create_layer(x, y, "Weapons", currWpn.weaponObj);
    }
}
