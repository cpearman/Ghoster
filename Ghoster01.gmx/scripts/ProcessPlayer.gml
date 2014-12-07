prePosition = 0;
stepsBeforeAnimationPause = 5

// Controls
if (keyboard_check(vk_up))
    {
    sprite_index = sprDarkPlayerUp;
    if (image_xscale == -1)
        {
        image_xscale = 1;
        //x = self.x - 32;
        }
    image_speed = self.playerImageSpeed;
    imageDelaySteps = imageMaxDelaySteps;
    if (y > 0) 
        {
        //prePosition = y;
        //y -= playerSpeed;
        //if (BlockCollisionCheck() == true){y = prePosition;}
        BlockCollisionCheck2(0,-1 * playerSpeed);
        }
    global.stepCounter += 1;
    }
else if (keyboard_check(vk_down))
    {
    sprite_index = sprDarkPlayerDown;
    if (image_xscale == -1)
        {
        image_xscale = 1;
        //x = self.x - 32;
        }
    image_speed = self.playerImageSpeed;
    imageDelaySteps = imageMaxDelaySteps;
    if (y + 12 < room_height) 
        {
        /*
        prePosition = y;
        y += playerSpeed;
        if (BlockCollisionCheck() == true){y = prePosition;}
        */
        BlockCollisionCheck2(0,playerSpeed);
        }
    global.stepCounter += 1;
    }
else if (keyboard_check(vk_left))
    {
    sprite_index = sprDarkPlayerSide;
    if (image_xscale == 1)
        {
        image_xscale = -1;
        //x = self.x + 32;
        }
    image_speed = self.playerImageSpeed;
    imageDelaySteps = imageMaxDelaySteps;
    if (x > view_xview[0]) 
        {
        /*
        prePosition = x;
        x -= playerSpeed;
        if (BlockCollisionCheck() == true){x = prePosition;}
        */
        BlockCollisionCheck2(-1 * playerSpeed,0);
        }
    global.stepCounter += 1;
    }
else if (keyboard_check(vk_right))
    {
    sprite_index = sprDarkPlayerSide;
    if (image_xscale == -1)
        {
        image_xscale = 1;
        //x = self.x - 32;
        }
    image_speed = self.playerImageSpeed;
    imageDelaySteps = imageMaxDelaySteps;
    if (x + 16 < view_xview[0] + view_wview[0]) 
        {
        /*
        prePosition = x;
        x += playerSpeed;
        BlockCollisionCheck();
        if (BlockCollisionCheck() == true){x = prePosition;}
        */
        BlockCollisionCheck2(playerSpeed,0);
        }
    global.stepCounter += 1;
    }
else
    {
    if (imageDelaySteps > 0)
        {
        imageDelaySteps -= 1;
        }
    else
        {
        image_speed = 0;
        }
  
    }
//cheats
if (keyboard_check(vk_alt))
    {
    playerSpeed += 1;
    if (playerSpeed > 10){ playerSpeed = 2;}
    }