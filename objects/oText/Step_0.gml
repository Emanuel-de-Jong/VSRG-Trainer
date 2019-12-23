if (secsHavePassed)
{
	secsHavePassed = false;
	timeNext = current_time + 5000;
	scorePrev = oMainGame.correctHits;
}


if (current_time >= timeNext)
{
	scoreSec = (oMainGame.correctHits - scorePrev) / 5;
	secsHavePassed = true;
}
