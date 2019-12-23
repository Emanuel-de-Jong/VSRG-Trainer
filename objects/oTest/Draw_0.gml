draw_sprite(sWall, 0, winHalfWidth - gameHalfWidth, winHalfHeight);
draw_sprite(sWall, 0, winHalfWidth + gameHalfWidth, winHalfHeight);
if (key.middleLine)
{
	draw_sprite(sWall, 0, winHalfWidth, winHalfHeight);
}


var i = 0;
repeat(noteAmount)
{
	draw_sprite_stretched(sprites[ds_list_find_value(rndNumbs, i)], 0,
		(winHalfWidth - gameHalfWidth) + (spriteWidth * ds_list_find_value(rndNumbs, i)),
		winHalfHeight - (spriteHeight / 2),
		spriteWidth, spriteWidth);
	i++;
}
