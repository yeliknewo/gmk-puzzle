self.dirty_tiles = false;
for (y = 0;y < ROOM_HEIGHT; y++) {
    for (x = 0;x < ROOM_WIDTH; x++) {
        rand = random(3);
        if (rand < 1) {
            self.tiles[x,y] = tile_type.red;
        } else if (rand < 2) {
            self.tiles[x,y] = tile_type.green;
        } else {
            self.tiles[x,y] = tile_type.blue;
        }
    }
}

self.tiles[random(ROOM_WIDTH),random(ROOM_HEIGHT)] = tile_type.purple;

for (y = 0;y < ROOM_HEIGHT; y++) {
    for (x = 0;x < ROOM_WIDTH; x++) {
        instance_create(x * TILE_WIDTH, y * TILE_HEIGHT, obj_tile);
    }
}
