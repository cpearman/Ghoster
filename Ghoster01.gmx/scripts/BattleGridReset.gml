//this script resets the battlegrid
for (i = 0; i < self.battleRows; i += 1)
        {
        for (j = 0; j < self.battleCols; j += 1)
            {
        if (self.battleGrid[i,j] == BATTLEGRID_CHARACTER_SELECTED)
            {
            self.battleGrid[i,j] = BATTLEGRID_CHARACTER;
            }
        else if (self.battleGrid[i,j] != BATTLEGRID_CHARACTER)
            {
            self.battleGrid[i,j] = BATTLEGRID_EMPTY;
            }
        }
    }
self.selectedMoveCoord[0] = -1;
self.selectedMoveCoord[1] = -1;
