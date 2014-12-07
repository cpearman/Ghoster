vertPixels = 32
horzPixels = 32

//32 pixel grid
global.grid = mp_grid_create(0,0,room_width / horzPixels, room_height / vertPixels, horzPixels, vertPixels);
mp_grid_add_instances(grid, objBlock, true);

//64 pixel grid
vertPixels = 64
horzPixels = 64
global.grid64 = mp_grid_create(0,0,room_width / horzPixels, room_height / vertPixels, horzPixels, vertPixels);
mp_grid_add_instances(grid64, objBlock, true);
