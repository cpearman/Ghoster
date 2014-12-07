stepsBeforePathCheck = 5;
if (global.stepCounter >= (self.lastStepPathUpdated + stepsBeforePathCheck))
    {
    as_path_destroy(self.spiritPath);
    self.spiritPath = as_path_create(global.map,x div gridPixelSize, y div gridPixelSize, objPlayer.x div gridPixelSize, objPlayer.y div gridPixelSize, sprite_width / gridPixelSize, 2, -1);
    self.lastStepPathUpdated = global.stepCounter;
    }
    
// follow path
stepsAllowedToMove = 2;
if (global.stepCounter > self.lastStepMoved)
    {
    if (as_path_length(self.spiritPath) > 0) 
        {
        if (movingFlag == false)
            {
            previousX = self.x
            previousY = self.y
            // tell us to move toward first node in path
            gox = as_path_nodex(self.spiritPath,0)*gridPixelSize;
            goy = as_path_nodey(self.spiritPath,0)*gridPixelSize;
            // remove first node of path if we are close enough to it
            if (point_distance(x,y,gox,goy) <= self.moveSpeed * 1.5) {as_path_removefirst(self.spiritPath);}
            // check for collision
            if (!place_meeting(gox,goy,objBlock)) 
                {
                move_towards_point(gox, goy, self.moveSpeed);
                }
            else {
                self.x = previousX;
                self.y = previousY;
                }
            alarm[0] = stepsAllowedToMove;
            movingFlag = true;
            }
        }
    }

//check for end of path
if (as_path_length(self.spiritPath) <= 0) 
        { speed = 0;}

