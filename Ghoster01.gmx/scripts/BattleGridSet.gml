//this script sets the battlegrid

//check battle mode
switch (self.battleMode)
    {
    case BATTLEMODE_MOVE:
        //get selected characters coord
        instanceCoord = GetInstanceBattleGridCoord(global.selectedChar); //gets instances x,y on battleGrid
        
        /*set move options on BattleGrid
        instance has a moveGrid (2D Array) based around the charcter, use this to step around grid
        and apply moveGrid option to battleGrid
        */
        
        //Step 1: determine characters origin in moveGrid
        for (i = 0; i < array_height_2d(global.selectedChar.object_index.moveGrid); i += 1)
            {
            for (j = 0; j < array_length_2d(global.selectedChar.object_index.moveGrid,0); j += 1)
                {
                if (global.selectedChar.object_index.moveGrid[i,j] == 2) //2 is where character is located
                    {
                    moveGridCharacterX = j;
                    moveGridCharacterY = i;
                    }
                }
            }
        //Step 2: Step through moveGrid, apply move options to BattleGrid by translating coordinates based on
        //the two character positions in both 2D arrays, essentially (translateX = instanceX - moveGridX
        translateX = instanceCoord[0] - moveGridCharacterX;
        translateY = instanceCoord[1] - moveGridCharacterY;
        for (i = 0; i < array_height_2d(global.selectedChar.object_index.moveGrid); i += 1)
            {
            for (j = 0; j < array_length_2d(global.selectedChar.object_index.moveGrid,0); j += 1)
                {
                if (global.selectedChar.object_index.moveGrid[i,j] == 1)
                    {
                    //battleGrid X coord
                    tempX = j + translateX;
                    //battleGrid Y coord
                    tempY = i + translateY;
                    //check is character exists at location
                    if ((self.battleGrid[tempY,tempX] != BATTLEGRID_CHARACTER) && (self.battleGrid[tempY,tempX] != BATTLEGRID_CHARACTER_SELECTED))
                        {
                        self.battleGrid[tempY,tempX] = BATTLEGRID_MOVE;
                        }
                    }
                }
            }
    break;
    
    case BATTLEMODE_ENEMY_TURN:
        BattleGridReset();
    break;
    
    case BATTLEMODE_TABLET:
        //get selected characters coord
        instanceCoord = GetInstanceBattleGridCoord(global.selectedChar); //gets instances x,y on battleGrid
        
        /*Set Tablets Hit Locations on BattleGrid
        tablet has a hitBox (2D Array) based around the charcter, use this to step around grid
        and apply hitBox option to battleGrid
        */
        show_debug_message("Array rows: " + string(array_height_2d(self.previouslySelectedTablet.object_index.hitBox)));
        show_debug_message("Array columns: " + string(array_length_2d(self.previouslySelectedTablet.object_index.hitBox,0)));
        show_debug_message("Array ID: " + string(self.previouslySelectedTablet.object_index.hitBox));
        //Step 1: determine characters origin in hitBox
        for (i = 0; i < array_height_2d(self.previouslySelectedTablet.object_index.hitBox); i += 1)
            {
            for (j = 0; j < array_length_2d(self.previouslySelectedTablet.object_index.hitBox,0); j += 1)
                {
                if (self.previouslySelectedTablet.object_index.hitBox[i,j] == 2) //2 is where character is located
                    {
                    hitBoxCharacterX = j;
                    hitBoxCharacterY = i;
                    }
                }
            }
        //Step 2: Step through hitBox, apply Tablet hit options to BattleGrid by translating coordinates based on
        //the two character positions in both 2D arrays, essentially (translateX = instanceX - hitBoxX
        translateX = instanceCoord[0] - hitBoxCharacterX;
        translateY = instanceCoord[1] - hitBoxCharacterY;
        for (i = 0; i < array_height_2d(self.previouslySelectedTablet.object_index.hitBox); i += 1)
            {
            for (j = 0; j < array_length_2d(self.previouslySelectedTablet.object_index.hitBox,0); j += 1)
                {
                if (self.previouslySelectedTablet.object_index.hitBox[i,j] == 1)
                    {
                    //battleGrid X coord
                    tempX = j + translateX;
                    //battleGrid Y coord
                    tempY = i + translateY;
                    //check if character exists at location
                    if (self.battleGrid[tempY,tempX] != BATTLEGRID_CHARACTER_SELECTED)
                        {
                        self.battleGrid[tempY,tempX] = BATTLEGRID_ATTACK;
                        }
                    }
                }
            }
        
    break;
    
    }
