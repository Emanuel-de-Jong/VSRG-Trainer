seconds += (delta_time * 0.000001) * room_speed;
if (seconds >= 60)
{
	seconds = 0;
	minutes++;
}
if (minutes >= 60)
{
	minutes = 0;
	hours++;
}
countdown = string_replace_all(string_format(hours, 2, 0) + ":" + string_format(minutes, 2, 0) + ":" + string_format(seconds, 2, 0), " ", "0");
