gridToUse = argument0;
targetX = argument1;
targetY = argument2;

var dx,dy;
dx = 0;
dy = 0;

if (gridToUse = SIZE_32_GRID)
    {
    
    if !mp_grid_path(global.grid,self.spiritPath,x,y,targetX,targetY,false) //This is debugging to make sure a path exists...
        {
        var i,x1,y1,x2,y2; //Temp variables...
        for (i=0; i<path_get_number(self.spiritPath); i+=1) //This loops through all the path points...
            {
            x1=path_get_point_x(self.spiritPath,i); //These lines add the path points to temp variables
            y1=path_get_point_y(self.spiritPath,i); //to be checked later on...
            x2=path_get_point_x(self.spiritPath,i+1);
            y2=path_get_point_y(self.spiritPath,i+1);
            if collision_line(x1,y1,x2,y2,objBlock,false,true) //checks to see if there is a collision between adjacent path points...
                {
                dx=x1; //If there is a collision, it sets dx/y to the last "good" path point...
                dy=y1;
                break;
                }
            } 
        mp_grid_path(global.grid,self.spiritPath,x,y,dx,dy,false); //This now re_creates the path with the "good" coords...
        }
    else
        {
        mp_grid_path(global.grid,self.spiritPath,x,y,targetX,targetY,false); //This now creates the path...
        }
    }
else if (gridToUse = SIZE_64_GRID)
    {
    if mp_grid_path(grid64, self.spiritPath, x, y, targetX, targetY, false){return true;}
    if !mp_grid_path(global.grid64,self.spiritPath,x,y,targetX,targetY.y,false) //This is debugging to make sure a path exists...
        {
        var i,x1,y1,x2,y2; //Temp variables...
        for (i=0; i<path_get_number(self.spiritPath); i+=1) //This loops through all the path points...
            {
            x1=path_get_point_x(self.spiritPath,i); //These lines add the path points to temp variables
            y1=path_get_point_y(self.spiritPath,i); //to be checked later on...
            x2=path_get_point_x(self.spiritPath,i+1);
            y2=path_get_point_y(self.spiritPath,i+1);
            if collision_line(x1,y1,x2,y2,objBlock,false,true) //checks to see if there is a collision between adjacent path points...
                {
                dx=x1; //If there is a collision, it sets dx/y to the last "good" path point...
                dy=y1;
                break;
                }
            } 
        mp_grid_path(global.grid64,self.spiritPath,x,y,dx,dy,false); //This now re_creates the path with the "good" coords...
        }
    else
        {
        mp_grid_path(global.grid64,self.spiritPath,x,y,targetX,targetY,false); //This now creates the path...
        }
    }

    

