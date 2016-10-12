if(self.dirty_tiles) {
    for(y = 0; y < ROOM_HEIGHT; y++) {
        for(x = 0; x < ROOM_WIDTH; x++){
            tile = instance_place(x * TILE_WIDTH, y * TILE_HEIGHT, obj_tile);
            if (tile  != noone) {
                script_tile_set_color(tile, self.tiles[x,y]);
            } else {
                show_debug_message("Fuck Off");
            }
        }
    }
    self.dirty_tiles = false;
}
