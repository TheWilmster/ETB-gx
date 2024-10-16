function approach(a, b, amt) {
	return (a > b) ? max(a - amt, b) : min(a + amt, b);
}

//hi guys unown made this..
/// @description Returns a value that will wave back and forth between [from-to] over [duration] seconds
/// @param from 	
/// @param to
/// @param duration
/// @param offset
function wave(from, to, duration, offset, time = current_time) {
	var a4 = (to - from) * 0.5;
	return from + a4 + sin((((time * 0.001) + duration * offset) / duration) * (pi * 2)) * a4;	
}
