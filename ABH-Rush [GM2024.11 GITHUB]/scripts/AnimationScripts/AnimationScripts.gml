// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AnimSet(_Action, _Sprite, _Speed, _LastAction){

	if actionCurrent == _Action {
		sprite_index = _Sprite;
		animFrame += _Speed;
		actionLast = _LastAction;
	}

}

function AnimSetSprite(_Action, _Sprite){

	if actionCurrent == _Action {
		sprite_index = _Sprite;
	}

}

function AnimSetSpeedBasedOnPlayer(_CalculatedValue, _ComparibleValue){
	var _MaxValue = max(_CalculatedValue - abs(speedX), _ComparibleValue);
	return (1 / _MaxValue);
}

function AnimSetSimple(_Action, _Sprite, _Speed){

	if actionCurrent == _Action {
		sprite_index = _Sprite;
		animFrame += _Speed;
	}

}