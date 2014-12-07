instanceID = argument0; //Instance ID

instanceCoord[0] = 0; //X
instanceCoord[1] = 0; //Y

instanceCoord[0] = instanceID.object_index.x div 32;
instanceCoord[1] = instanceID.object_index.y div 32;

return instanceCoord;
