var i;
var j;


if (allPressed && keyboard_check(vk_nokey))
{
	correctHits++;
	
	allPressed = false;
	
	var identAmount;
	{ do 
	{
		i = 0;
		repeat(noteAmount)
		{
			lastNumbs[i] = ds_list_find_value(rndNumbs, i);
			i++;
		}
		randomize();
		ds_list_shuffle(rndNumbs);
		
		identAmount = 0;
		i = 0;
		repeat (noteAmount)
		{
			j = 0;
			repeat (noteAmount)
			{
				if (ds_list_find_value(rndNumbs, i) == lastNumbs[j]) identAmount++;
				j++;
			}
			i++;
		}
	} 
	until (identAmount != noteAmount); }
	
	
	if (noteAmIsRand) 
	{
		noteAmount = floor(random((noteAmRange[1] + 1) - noteAmRange[0])) + noteAmRange[0];
	}
	else if (noteAmIncreasing)
	{
		if (correctHits % hitsBeforeInc == 0 && noteAmount < keyAmount - 1)
		{
			noteAmount++;
		}
		else if (noteAmount >= keyAmount - 1)
		{
			noteAmount = 1;
		}
	}
}





i = 0;
repeat (keyAmount)
{
	if (keyboard_check(keys[i])) ds_list_add(keysPressed, keys[i]);
	i++;
}


if (ds_list_size(keysPressed) == noteAmount)
{
	var keysMatch = 0;
	i = 0;
	repeat (noteAmount)
	{
		j = 0;
		repeat (noteAmount)
		{
			if (ds_list_find_value(keysPressed, i) == keys[ds_list_find_value(rndNumbs, j)]) keysMatch++;
			j++;
		}
		i++;
	}
	if (keysMatch == noteAmount) allPressed = true;
}


ds_list_clear(keysPressed); 
