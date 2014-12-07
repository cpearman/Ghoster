/// Path

as_path_destroy(self.spiritPath);
    
    // align to "grid" so we don't get stuck in a wall
//move_snap(16,16);
    
path = as_path_create(global.map,self.x, self.y, objPlayer.x, objPlayer.y, self.sprite_width, 2, -1);


// follow path

if (as_path_length(path) > 0) {
    // tell us to move toward first node in path
    gox = as_path_nodex(path,0)*16;
    goy = as_path_nodey(path,0)*16;
    // remove first node of path if we are close enough to it
    if (point_distance(x,y,gox,goy) <= maxspeed * 1.5) {
        as_path_removefirst(path);
    }
    
    // should we be slowed?
    var spd;
    spd = moveSpeed;
    if (collision_point(x+16*width/2, y+16*width/2, obj_slow, 0, 1)) {
        spd /= 2;
    }
    
    move_towards_point(gox, goy, spd);
} else {
    // stop moving
    speed = 0;
}
