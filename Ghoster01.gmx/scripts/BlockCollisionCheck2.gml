xStep = argument0;
yStep = argument1;

if (!place_meeting(self.x + xStep,self.y + yStep,objBlock)) 
    {
    
    self.x += xStep;
    self.y += yStep;
    
    }
