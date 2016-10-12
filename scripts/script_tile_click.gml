switch(self.god.tiles[self.tile_x, self.tile_y]) {
    case tile_type.red:
    for (dy = -1; dy <= 1; dy++) {
        for (dx = -1; dx <= 1; dx++) {
            real_x = self.tile_x + dx;
            real_y = self.tile_y + dy;
            if(script_check_tiles_index(real_x, real_y)) {
                self.god.tiles[real_x, real_y] = tile_type.blue;
            }
        }
    }
    break;
    
    case tile_type.green:
    for (dy = -1; dy <= 1; dy++) {
        for (dx = -1; dx <= 1; dx++) {
            real_x = self.tile_y + dx;
            real_y = self.tile_x + dy;
            if(script_check_tiles_index(real_x, real_y)) {
                self.god.tiles[real_x, real_y] = tile_type.red;
            }
        }
    }
    break;
    
    case tile_type.blue:
    for (dy = -2; dy <= 2; dy++) {
        for (dx = -2; dx <= 2; dx++) {
            real_x = self.tile_x + dx;
            real_y = self.tile_y + dy;
            if(script_check_tiles_index(real_x, real_y)) {
                self.god.tiles[real_x, real_y] = tile_type.green;
            }
        }
    }
    break;
}
self.god.dirty_tiles = true;
