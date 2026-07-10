function SmoothStep(value, target, steps){
	return lerp(value, target, steps*steps*(3-2*steps));
}