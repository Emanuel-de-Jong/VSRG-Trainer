key = oKeys2;

noteAmIsRand = false;
noteAmount = 1;


spriteHeight = sprite_get_height(sNoteWhite) * key.noteSize;
spriteWidth = sprite_get_width(sNoteWhite) * key.noteSize;

gameHalfWidth = (spriteWidth * key.keyAmount) / 2;
winHalfWidth = room_width / 2;
winHalfHeight = room_height / 2;

allPressed = true;

keysPressed = ds_list_create();
rndNumbs = ds_list_create();
i = 0;
repeat(key.keyAmount)
{
	ds_list_add(rndNumbs, i);
	i++;
}
