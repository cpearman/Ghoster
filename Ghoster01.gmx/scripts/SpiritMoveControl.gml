//argument0 = lastStepMoved

if (global.stepCounter > self.lastStepMoved)
    {
    //self.x += self.moveSpeed;
    //if (!BlockCollisionCheck2()) {self.lastStepMoved = global.stepCounter;}
    BlockCollisionCheck2(self.moveSpeed,0);
    self.lastStepMoved = global.stepCounter;
    }
