//cell pixel dimensions
vertPixels = 16
horzPixels = 16

global.map = as_map_create(room_width / gridPixelSize, room_height / gridPixelSize, 1);

with (objBlock)
    {
    as_map_setcell(global.map,x div gridPixelSize, y div gridPixelSize, -1);
    }
