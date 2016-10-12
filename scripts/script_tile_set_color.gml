with(argument[0]) {
    switch(argument[1]) {
        case tile_type.red:
        image_blend = make_color_rgb(255, 0, 0);
        break;
        
        case tile_type.green:
        image_blend = make_color_rgb(0, 255, 0);
        break;
        
        case tile_type.blue:
        image_blend = make_color_rgb(0, 0, 255);
        break;
        
        case tile_type.purple:
        image_blend = make_color_rgb(255, 0, 255);
        break;
    }
}

