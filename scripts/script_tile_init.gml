with(argument[0]) {
    self.tile_x = x / TILE_WIDTH;
    self.tile_y = y / TILE_HEIGHT;
    self.god = instance_find(obj_god, 0);
    script_tile_set_color(self, self.god.tiles[self.tile_x, self.tile_y]);
}

