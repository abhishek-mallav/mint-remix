-- Define your visual elements here
-- For examples, and a complete list on the possible elements and their 
-- properties, go to https://github.com/fisadev/conky-draw/
-- (and be sure to use the lastest version)

elements = {

{
    kind = 'ring_graph',
    conky_value = 'cpu',
    center = {x = 85, y = 230},
    radius = 40,

    background_color = 0x00FF00,
    background_alpha = 0.1,
    background_thickness = 2,

    bar_color = 0x00FF00,
    bar_alpha = 0.8,
    bar_thickness = 7,
    
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 2,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 7,
    
    start_angle = -90,
    end_angle = 270,
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu1',
    from = {x = 160, y = 260},
    to = {x = 160, y = 180},
    
    background_color = 0x00E5FF,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = 0x00E5FF,
    bar_alpha = 0.6,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 0,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 12
},


{
    kind = 'bar_graph',
    conky_value = 'cpu cpu2',
    from = {x = 180, y = 260},
    to = {x = 180, y = 180},
    
    background_color = 0x00E5FF,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = 0x00E5FF,
    bar_alpha = 0.6,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 0,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu3',
    from = {x = 200, y = 260},
    to = {x = 200, y = 180},
    
    background_color = 0x00E5FF,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = 0x00E5FF,
    bar_alpha = 0.6,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 0,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu4',
    from = {x = 220, y = 260},
    to = {x = 220, y = 180},
    
    background_color = 0x00E5FF,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = 0x00E5FF,
    bar_alpha = 0.6,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 0,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu5',
    from = {x = 240, y = 260},
    to = {x = 240, y = 180},
    
    background_color = 0x00E5FF,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = 0x00E5FF,
    bar_alpha = 0.6,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 0,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu6',
    from = {x = 260, y = 260},
    to = {x = 260, y = 180},
    
    background_color = 0x00E5FF,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = 0x00E5FF,
    bar_alpha = 0.6,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 0,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu7',
    from = {x = 280, y = 260},
    to = {x = 280, y = 180},
    
    background_color = 0x00E5FF,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = 0x00E5FF,
    bar_alpha = 0.6,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 0,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu8',
    from = {x = 300, y = 260},
    to = {x = 300, y = 180},
    
    background_color = 0x00E5FF,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = 0x00E5FF,
    bar_alpha = 0.6,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 0,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu9',
    from = {x = 320, y = 260},
    to = {x = 320, y = 180},
    
    background_color = 0x00E5FF,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = 0x00E5FF,
    bar_alpha = 0.6,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 0,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu10',
    from = {x = 340, y = 260},
    to = {x = 340, y = 180},
    
    background_color = 0x00E5FF,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = 0x00E5FF,
    bar_alpha = 0.6,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 0,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu11',
    from = {x = 360, y = 260},
    to = {x = 360, y = 180},
    
    background_color = 0x00E5FF,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = 0x00E5FF,
    bar_alpha = 0.6,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 0,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu12',
    from = {x = 380, y = 260},
    to = {x = 380, y = 180},
    
    background_color = 0x00E5FF,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = 0x00E5FF,
    bar_alpha = 0.6,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 0,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 12
},

{
    kind = 'ring_graph',
    conky_value = 'nvidia gpuutil',
    center = {x = 85, y = 372},
    radius = 40,

    background_color = 0x00FF00,
    background_alpha = 0.1,
    background_thickness = 2,

    bar_color = 0x00FF00,
    bar_alpha = 0.8,
    bar_thickness = 7,
    
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 2,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 7,
    
    start_angle = -90,
    end_angle = 270,
},

{
    kind = 'bar_graph',
    conky_value = 'nvidia memperc',
    from = {x = 180, y = 395},
    to = {x = 380, y = 395},

    background_thickness = 2,
    background_color = 0x00E5FF,
    background_alpha = 0.2,

    bar_thickness = 10,
    bar_color = 0x00E5FF,
    bar_alpha = 0.8,

    critical_threshold = 80,

    change_color_on_critical = true,
    change_thickness_on_critical = true,

    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 10,

    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 2
},

{
    kind = 'bar_graph',
    conky_value = 'memperc',
    from = {x = 250, y = 447},
    to = {x = 380, y = 447},

    background_thickness = 2,
    background_color = 0x00E5FF,
    background_alpha = 0.2,

    bar_thickness = 10,
    bar_color = 0x00E5FF,
    bar_alpha = 0.8,

    critical_threshold = 80,

    change_color_on_critical = true,
    change_thickness_on_critical = true,

    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 10,

    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 2
},

{
    kind = 'bar_graph',
    conky_value = 'swapperc',
    from = {x = 250, y = 477},
    to = {x = 380, y = 477},

    background_thickness = 2,
    background_color = 0x00E5FF,
    background_alpha = 0.2,

    bar_thickness = 10,
    bar_color = 0x00E5FF,
    bar_alpha = 0.8,

    critical_threshold = 80,

    change_color_on_critical = true,
    change_thickness_on_critical = true,

    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 10,

    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 2
},

{
    kind = 'ring_graph',
    conky_value = 'fs_used_perc /',
    center = {x = 85, y = 565},
    radius = 35,

    background_color = 0x00FF00,
    background_alpha = 0.1,
    background_thickness = 2,

    bar_color = 0x00FF00,
    bar_alpha = 0.8,
    bar_thickness = 7,
    
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 2,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 7,
    
    start_angle = -240,
    end_angle = 60,
},

{
    kind = 'ring_graph',
    conky_value = 'fs_used_perc /media/natalie/D-Drive',
    center = {x = 85, y = 680},
    radius = 35,

    background_color = 0x00FF00,
    background_alpha = 0.1,
    background_thickness = 2,

    bar_color = 0x00FF00,
    bar_alpha = 0.8,
    bar_thickness = 7,
    
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_thickness_on_critical = true,
    
    background_color_critical = 0xFFA0A0,
    background_thickness_critical = 2,
    
    bar_color_critical = 0xFF0000,
    bar_thickness_critical = 7,
    
    start_angle = -240,
    end_angle = 60,
},

}
