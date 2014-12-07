//map cell pixel dimensions
vertPixels = 16
horzPixels = 16

/// Create Map
global.map = as_map_create(room_width/horzPixels, room_height/vertPixels, 1);

//add solid objects
/*
with (objBlock)
    {
    as_map_setcell(global.map,x,y,-1);
    }
    */
    
