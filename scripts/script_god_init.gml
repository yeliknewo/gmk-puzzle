self.dirty_tiles = false;
for (y = 0;y < ROOM_HEIGHT; y++) {
    for (x = 0;x < ROOM_WIDTH; x++) {
        rand = random(10);
        if (rand < 2) {
            self.tiles[x,y] = tile_type.red;
        } else if (rand < 6) {
            self.tiles[x,y] = tile_type.green;
        } else {
            self.tiles[x,y] = tile_type.blue;
        }
    }
}

for (y = 0;y < ROOM_HEIGHT; y++) {
    for (x = 0;x < ROOM_WIDTH; x++) {
        instance_create(x * TILE_WIDTH, y * TILE_HEIGHT, obj_tile);
    }
}
