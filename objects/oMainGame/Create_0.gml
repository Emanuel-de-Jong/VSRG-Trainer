keyAmount = 10;


noteAmIsRand = true;
noteAmRange[0] = 3;
noteAmRange[1] = 5;

noteAmIncreasing = false;
hitsBeforeInc = 25;

noteAmount = 1;


switch(keyAmount)
{
	case 2:
		keys[0] = ord("F");
		keys[1] = ord("J");
		break;
	case 4:
		keys[0] = ord("D");
		keys[1] = ord("F");
		keys[2] = ord("J");
		keys[3] = ord("K");
		break;
	case 7:
		keys[0] = ord("S");
		keys[1] = ord("D");
		keys[2] = ord("F");
		keys[3] = vk_space;
		keys[4] = ord("J");
		keys[5] = ord("K");
		keys[6] = ord("L");
		break;
	case 10:
//		keys[0] = ord("Q");
//		keys[1] = ord("W");
//		keys[2] = ord("E");
//		keys[3] = ord("R");
//		keys[4] = ord("V");
//		keys[5] = ord("M");
//		keys[6] = ord("O");
//		keys[7] = ord("P");
//		keys[8] = 219; //[
//		keys[9] = 221; //]
		keys[0] = ord("W");
		keys[1] = ord("E");
		keys[2] = ord("R");
		keys[3] = ord("T");
		keys[4] = vk_space;
		keys[5] = vk_right;
		keys[6] = vk_numpad7;
		keys[7] = vk_numpad8;
		keys[8] = vk_numpad9;
		keys[9] = vk_add;
		
		break;
}

switch(keyAmount)
{
	case 2:
		sprites[0] = sNoteWhite;
		sprites[1] = sNoteBlue;
	case 4:
		sprites[0] = sNoteWhite;
		sprites[1] = sNoteBlue;
		sprites[2] = sNoteBlue;
		sprites[3] = sNoteWhite;
		break;
	case 7:
		sprites[0] = sNoteWhite;
		sprites[1] = sNoteBlue;
		sprites[2] = sNoteWhite;
		sprites[3] = sNoteYellow;
		sprites[4] = sNoteWhite;
		sprites[5] = sNoteBlue;
		sprites[6] = sNoteWhite;
		break;
	case 10:
		sprites[0] = sNoteWhite;
		sprites[1] = sNoteBlue;
		sprites[2] = sNoteYellow;
		sprites[3] = sNoteBlue;
		sprites[4] = sNoteWhite;
		sprites[5] = sNoteWhite;
		sprites[6] = sNoteBlue;
		sprites[7] = sNoteYellow;
		sprites[8] = sNoteBlue;
		sprites[9] = sNoteWhite;
		break;
}

switch(keyAmount)
{
	case 2:
		middleLine = false;
		break;
	case 4:
		middleLine = false;
		break;
	case 7:
		middleLine = false;
		break;
	case 10:
		middleLine = true;
		break;
}

switch(keyAmount)
{
	case 2:
		noteSize = 1.2;
		break;
	case 4:
		noteSize = 1;
		break;
	case 7:
		noteSize = 1;
		break;
	case 10:
		noteSize = 0.6;
		break;
}






spriteHeight = sprite_get_height(sNoteWhite) * noteSize;
spriteWidth = sprite_get_width(sNoteWhite) * noteSize;

gameHalfWidth = (spriteWidth * keyAmount) / 2;
winHalfWidth = room_width / 2;
winHalfHeight = room_height / 2;

allPressed = true;

keysPressed = ds_list_create();
rndNumbs = ds_list_create();
i = 0;
repeat(keyAmount)
{
	ds_list_add(rndNumbs, i);
	i++;
}
