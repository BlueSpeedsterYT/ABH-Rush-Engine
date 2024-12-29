/// @description Set Up Character Animations
if(form == PlayerFormNormal)
{
    switch(character)
    {
        case PlayerSonic:
        {
            DrawSonic();
        }
        break;
            
        //case PlayerShadow:
        //{
        //   DrawShadow();
        //}
        //break;
    }
}
//}else{
//    switch(character)
//    {
//        case PlayerSonic:
//        {
//            DrawSuperSonic();
//        }
//        break;
            
//        case PlayerShadow:
//        {
//            DrawSuperShadow();
//        }
//        break;
//	}
//}

//if(character == PlayerTails)
//{
//    DrawTails();
//}

boost_direction = point_direction(x_begin,y_begin,x,y)
tail_direction = point_direction(x_begin,y_begin,x,y)