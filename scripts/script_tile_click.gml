switch(self.god.tiles[self.tile_x, self.tile_y]) {
    case tile_type.red:
    for (dy = -1; dy <= 1; dy++) {
        for (dx = -1; dx <= 1; dx++) {
            real_x = self.tile_x + dx;
            real_y = self.tile_y + dy;
            if(script_check_tiles_index(real_x, real_y)) {
                switch(self.god.tiles[real_x, real_y]) {
                    case tile_type.red:
                    self.god.tiles[real_x, real_y] = tile_type.red;
                    break;
                    
                    case tile_type.green:
                    self.god.tiles[real_x, real_y] = tile_type.blue;
                    break;
                    
                    case tile_type.blue:
                    self.god.tiles[real_x, real_y] = tile_type.green;
                    break;
                    
                    case tile_type.purple:
                    self.god.tiles[real_x, real_y] = tile_type.purple;
                    break;
                }

            }
        }
    }
    break;
    
    case tile_type.green:
    for (dy = -1; dy <= 1; dy++) {
        for (dx = -1; dx <= 1; dx++) {
            real_x = self.tile_x + dx;
            real_y = self.tile_y + dy;
            if(script_check_tiles_index(real_x, real_y)) {
                switch(self.god.tiles[real_x, real_y]) {
                    case tile_type.red:
                    self.god.tiles[real_x, real_y] = tile_type.blue;
                    break;
                    
                    case tile_type.green:
                    self.god.tiles[real_x, real_y] = tile_type.green;
                    break;
                    
                    case tile_type.blue:
                    self.god.tiles[real_x, real_y] = tile_type.red;
                    break;
                    
                    case tile_type.purple:
                    self.god.tiles[real_x, real_y] = tile_type.purple;
                    break;
                }

            }
        }
    }
    break;
    
    case tile_type.blue:
    for (dy = -1; dy <= 1; dy++) {
        for (dx = -1; dx <= 1; dx++) {
            real_x = self.tile_x + dx;
            real_y = self.tile_y + dy;
            if(script_check_tiles_index(real_x, real_y)) {
                switch(self.god.tiles[real_x, real_y]) {
                    case tile_type.red:
                    self.god.tiles[real_x, real_y] = tile_type.green;
                    break;
                    
                    case tile_type.green:
                    self.god.tiles[real_x, real_y] = tile_type.red;
                    break;
                    
                    case tile_type.blue:
                    self.god.tiles[real_x, real_y] = tile_type.blue;
                    break;
                    
                    case tile_type.purple:
                    self.god.tiles[real_x, real_y] = tile_type.purple;
                    break;
                }
            }
        }
    }
    break;
    
    case tile_type.purple:
    for (dy = -1; dy <= 1; dy++) {
        for (dx = -1; dx <= 1; dx++) {
            real_x = self.tile_x + dx;
            real_y = self.tile_y + dy;
            if(script_check_tiles_index(real_x, real_y)) {
                switch(self.god.tiles[real_x, real_y]) {
                    case tile_type.red:
                    self.god.tiles[real_x, real_y] = tile_type.blue;
                    break;
                    
                    case tile_type.green:
                    self.god.tiles[real_x, real_y] = tile_type.blue;
                    break;
                    
                    case tile_type.blue:
                    self.god.tiles[real_x, real_y] = tile_type.red;
                    break;
                    
                    case tile_type.purple:
                    self.god.tiles[real_x, real_y] = tile_type.blue
                    break;
                }
            }
        }
    }
    break;
}
self.god.dirty_tiles = true;
