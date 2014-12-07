/* Script for changing a characters sprite according to direction
*/

upSprite = argument0
sideSprite = argument1
downSprite = argument2

/*
Gamemaker directions
0 degree = right
90 degree = up
180 degree = left
270 degree = down
------
This will assume a 90 arc centered around cardinal directions to switch
the charcters sprite. Example ( 45 to 134 (135 - 1) will be UP)
*/
if (movingFlag = true && global.stepCounter > self.lastStepPathUpdated)
    {
    if (self.direction >= 45 && self.direction < 135) //up
        {
        self.sprite_index = upSprite;
        if (self.image_xscale == -1)
            {
            self.image_xscale = 1;
            //self.x = self.x - self.sprite_width;
            //sprite_set_offset(self,-self.sprite_width,0);
            }
        self.image_speed = self.characterImageSpeed;
        //imageDelaySteps = imageMaxDelaySteps;
        }
    else if (self.direction >= 135 && self.direction < 225) //left
        {
        self.sprite_index = sideSprite;
        if (self.image_xscale == 1)
            {
            self.image_xscale = -1;
            //self.x = self.x - self.sprite_width;//sprite_width will be negative
            //sprite_set_offset(self,self.sprite_width,0);
            }
        self.image_speed = self.characterImageSpeed;
        //imageDelaySteps = imageMaxDelaySteps;
        }
    else if (self.direction >= 225 && self.direction < 315) //down
        {
        self.sprite_index = downSprite;
        if (self.image_xscale == -1)
            {
            self.image_xscale = 1;
            //self.x = self.x - self.sprite_width;
            //sprite_set_offset(self,-self.sprite_width,0);
            }
        self.image_speed = self.characterImageSpeed;
        //imageDelaySteps = imageMaxDelaySteps;
        }
    else if (self.direction >= 315 ^^ self.direction < 45) //right
        {
        self.sprite_index = sideSprite;
        if (self.image_xscale == -1)
            {
            self.image_xscale = 1;
            //self.x = self.x - self.sprite_width;
            //sprite_set_offset(self,-self.sprite_width,0);
            }
        self.image_speed = self.characterImageSpeed;
        //imageDelaySteps = imageMaxDelaySteps;
        }
    }

if (movingFlag = false) {self.image_speed = 0;}
