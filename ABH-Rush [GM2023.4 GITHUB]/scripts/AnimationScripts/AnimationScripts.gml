// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AnimSet(_Action, _Sprite, _Speed, _LastAction){

	if actionCurrent == _Action {
		animSprite = _Sprite;
		animFrame += _Speed;
		actionLast = _LastAction;
	}

}

function AnimSetSprite(_Action, _Sprite){

	if actionCurrent == _Action {
		animSprite = _Sprite;
	}

}

function AnimSetSimple(_Action, _Sprite, _Speed){

	if actionCurrent == _Action {
		animSprite = _Sprite;
		animFrame += _Speed;
	}

}