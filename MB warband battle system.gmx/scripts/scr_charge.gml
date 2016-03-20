///scr_charge()
if (team = TEAM.red) target = instance_nearest(x,y,blue_parent);
if (team = TEAM.blue) target = instance_nearest(x,y,red_parent);
if (instance_exists(target)) {
    if (distance_to_object(target) >= dist) {
        p = path_add();
        mp_potential_path(p,target.x, target.y,4,4,0);
        path_start(p, 1.5, 0 ,0);
    } else {
        path_end();
    }
} else {
    speed = 0;
    path_end();
}
if (class = CLASS.melee) dist = 0;
if (class = CLASS.ranged) dist = 128;
if (class = CLASS.mounted) dist = 16;
