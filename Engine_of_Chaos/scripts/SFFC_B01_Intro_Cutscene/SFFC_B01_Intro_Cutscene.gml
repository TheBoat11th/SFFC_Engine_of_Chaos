

function SFFC_B01_Intro_Cutscene(){
	var _jason = player_trigger;
	
	var _Mishaela = Get_Character("Mishaela","Default");
	var _Lynx = Get_Character("Lynx","Default");
	var _Eiku = Get_Character("Eiku","Default");
	var _Magus = Get_Character("Magus","Default");
	
	var _Max = Get_Character("Max","Default");
	var _Ridion = Get_Character("Ridion","Default");
	var _Adam = Get_Character("Adam","Default");
	var _Mead = Get_Character("Mead","Default");
	var _Paige = Get_Character("Paige","Default");
	var _Sonette = Get_Character("Sonette","Default");
	
	switch(state){
	    case 0:
	        state += 2;
			_jason.allow_interaction = false;
			global.PTC = false;
			Pan_Camera_To_Location(288,600,false,999);
			Move_Character(_Mishaela,"Up",9,2)
			Move_Character(_Lynx,"Up",9,2);
			Move_Character(_Eiku,"Up",10,2);
			Move_Character(_Magus,"Up",10,2)
			alarm[0] = 115 * global.xspeed;
	    break;
	    case 2:
	        state += 1;
			Face_Direction(_Lynx,"Left")
	        Move_Character(_Mishaela,"Left",2,2);
			alarm[0] = 15 * global.xspeed;
	    break;
	    case 3:
	        state += 1;
			Move_Character(_Eiku,"Up",1,2);
			Move_Character(_Magus,"Up",1,2);
			alarm[0] = 20 * global.xspeed;
	    break;
	    case 4:
	        state += 2;
			Move_Character(_Eiku,"Left",1,2);
			Move_Character(_Magus,"Up",1,2);
			alarm[0] = 30 * global.xspeed;
	    break;
	    case 5:
			state += 1;
	        //Move_Character(_Magus,"Up",1,3);
			alarm[0] = 25 * global.xspeed;
	    break;
	    case 6:
			state += 1;
	        Create_Character_Dialogue("Local",_Max,"Mishaela!^ It's taken a long time. At last I've found you!",id,true,true);
	   break;
	    case 7:
			state += 1;
	        Face_Direction(_Mishaela,"Down")
			Face_Direction(_Eiku,"Down")
			Face_Direction(_Magus,"Down")
			Face_Direction(_Lynx,"Down")
			alarm[0] = 10 * global.xspeed;
	    break;
	    case 8:
	        state += 1;
	        Move_Character(_Max,"Up",5,2);
			alarm[0] = 20 * global.xspeed;
	    break;
	    case 9:
	        Move_Character(_Adam,"Up",5,2);
			alarm[0] = 10 * global.xspeed;
	        state += 1;
	    break;
	    case 10:
	        state += 1;
	        Move_Character(_Ridion,"Up",5,2);
			alarm[0] = 10 * global.xspeed;
	    break;
	    case 11:
	        state += 1;
	        Move_Character(_Mead,"Up",5,2);
			alarm[0] = 10 * global.xspeed;
	    break;
	    case 12:
	        state += 1;
			Move_Character(_Paige,"Up",5,2);
			alarm[0] = 10 * global.xspeed;
	    break;
	    case 13:
	        state += 1;
	        Move_Character(_Sonette,"Up",5,2);
			alarm[0] = 10 * global.xspeed;
	    break;
	    case 14:
			state += 1;
	        Create_Character_Dialogue("Local",_Mishaela,"What are you saying, Max?^ If that's the case, it's time to finish me, don't you think? ^Too bad I'm not the same old Misheala you defeated before!",id,true,true);
	    break;
	    case 15:
	        state += 1;
	        Move_Character(_Lynx,"Left",1,1);
			alarm[0] = 25 * global.xspeed;
	    break;
		case 16:
	        state += 1;
	        Face_Direction(_Lynx,"Up")
			alarm[0] = 10 * global.xspeed;
	    break;
	    case 17:
	        state += 1;
	        Create_Character_Dialogue("Local",_Lynx,"Mistress Mishaela, I am here!^ You can always rely on Lynx.^ Leave them to me.",id,true,true);
	    break;
	    case 18:
	        state += 1;
	        Create_Character_Dialogue("Local",_Mishaela,"So, Max, it seems that you're here to stop us from fulfilling our dream.^ Do as you wish, Lynx.",id,true,true);
	    break;
	    
		case 19:
	        state += .1;
	        Move_Character(_Mishaela,"Left",7,2);
			Move_Character(_Eiku,"Left",7,2);
			Move_Character(_Magus,"Left",7,2);
			alarm[0] = 85 * global.xspeed;
	    break;
		case 19.1:
	        state += .9;
			Face_Direction(_Lynx,"Left")
			alarm[0] = 15 * global.xspeed;
	    break
		case 20:
	        state += 1;
	        Move_Character(_Mishaela,"Up",12,3);
			Move_Character(_Eiku,"Left",1,3);
			Move_Character(_Magus,"Left",1,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 21:
	        state += 1;
			Move_Character(_Eiku,"Up",12,3);
			Move_Character(_Magus,"Left",1,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 22:
	        state += 1;
			Move_Character(_Magus,"Up",12,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 23:
	        state += .1;
			Face_Direction(_Lynx,"Down")
			alarm[0] = 15 * global.xspeed;
	    break;
		case 23.1:
	        state += .1;
			Move_Character(_Lynx,"Right",1,2);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 23.2:
	        state += .8;
			Move_Character(_Lynx,"Down",1,2);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 24:
	        state += 1;
	        Create_Character_Dialogue("Local",_Lynx,"Well, Shining Force!^ Show me what you've got!",id,true,true);
	    break;
		case 25:
	        state += 1;
	        Create_Character_Dialogue("Local",_Max,"Ridion, we can't let Mishaela escape!",id,true,true);
	    break;
		case 26:
	        state += 1;
			Face_Direction(_Max,"Down")
			alarm[0] = 15 * global.xspeed;
	    break;
		case 27:
	        state += 1;
	        Create_Character_Dialogue("Local",_Lynx,"Adam, take Mead and the others and go after Mishaela!",id,true,true);
	    break;
		case 28:
	        state += 1;
	        Create_Character_Dialogue("Local",_Adam,"Understood, Master Max. We'll chase after Mishaela.",id,true,true);
	    break;
		case 29:
	        state += 1;
			Face_Direction(_Adam,"Down")
			alarm[0] = 15 * global.xspeed;
	    break;
		case 30:
	        state += 1;
	        Create_Character_Dialogue("Local",_Adam,"Mead, Paige, Sonette, let's go.^ Follow me!",id,true,true);
	    break;
		case 31:
	        state += 1;
			 Perform_Jump(_Mead,1)
			 Perform_Jump(_Paige,1)
			 Perform_Jump(_Sonette,1)
			 alarm[0] = 5 * global.xspeed;
		break;
		case 32:
	        state += 1;
	        Create_Character_Dialogue("Local",_Mead,"Right!",id,true,true);
	    break;
		case 33:
	        state += 1;
			Move_Character(_Adam,"Up",2,3);
			Move_Character(_Mead,"Up",2,3);
			Move_Character(_Paige,"Left",1,3);
			Move_Character(_Sonette,"Left",1,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 34:
	        state += 1;
			Move_Character(_Adam,"Left",1,3);
			Move_Character(_Mead,"Up",1,3);
			Move_Character(_Paige,"Up",2,3);
			Move_Character(_Sonette,"Left",1,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 35:
	        state += 1;
			Move_Character(_Adam,"Left",2,3);
			Move_Character(_Mead,"Left",2,3);
			Move_Character(_Paige,"Up",1,3);
			Move_Character(_Sonette,"Up",2,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 36:
	        state += 1;
			Move_Character(_Paige,"Left",1,3);
			Move_Character(_Sonette,"Up",1,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 37:
	        state += 1;
			Move_Character(_Adam,"Left",3,3);
			Move_Character(_Mead,"Left",3,3);
			Move_Character(_Paige,"Left",3,3);
			Move_Character(_Sonette,"Left",3,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 38:
	        state += 1;
			Move_Character(_Adam,"Up",1,3);
			Move_Character(_Mead,"Left",1,3);
			Move_Character(_Paige,"Left",1,3);
			Move_Character(_Sonette,"Left",1,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 39:
	        state += 1;
			Move_Character(_Adam,"Up",1,3);
			Move_Character(_Mead,"Up",1,3);
			Move_Character(_Paige,"Left",1,3);
			Move_Character(_Sonette,"Left",1,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 40:
	        state += 1;
			Move_Character(_Adam,"Up",1,3);
			Move_Character(_Mead,"Up",1,3);
			Move_Character(_Paige,"Up",1,3);
			Move_Character(_Sonette,"Left",1,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 41:
	        state += 1;
			Move_Character(_Adam,"Up",3,3);
			Move_Character(_Mead,"Up",3,3);
			Move_Character(_Paige,"Up",3,3);
			Move_Character(_Sonette,"Up",3,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 42:
	        state += 1;
	        Create_Character_Dialogue("Local",_Max,"Ridion, you sneak up behind Lynx.",id,true,true);
	    break;
		case 43:
	        state += 1;
	        Create_Character_Dialogue("Local",_Ridion,"Okay Max!",id,true,true);
	    break;
		case 44:
	        state += 1;
	        Move_Character(_Ridion,"Up",2,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 45:
	        state += 1;
	        Move_Character(_Ridion,"Right",6,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		case 46:
	        state += 1;
	        Move_Character(_Ridion,"Up",7,3);
			alarm[0] = 15 * global.xspeed;
	    break;
		
		case 47:
	        state += 1;
			Face_Direction(_Max,"Right")
			alarm[0] = 15 * global.xspeed;
	    break;
		case 48:
	        state += 1;
			Face_Direction(_Max,"Up")
			alarm[0] = 15 * global.xspeed;
	    break;
		
		case 49:
	        state += 1;
	        Move_Character(_Max,"Up",1,2);
			alarm[0] = 45 * global.xspeed;
	    break;
		case 50:
	        state += 1;
	        Move_Character(_Max,"Up",1,3);
			alarm[0] = 45 * global.xspeed;
	    break;
		case 51:
	        state += 1;
	        Create_Character_Dialogue("Local",_Lynx,"They've gone after Mistress Mishaela?^ I should get to her side quickly.",id,true,true);
	    break;
		
		case 52:
	        state += 1;
	        Move_Character(_Max,"Up",1,2);
			alarm[0] = 45 * global.xspeed;
	    break;
		case 53:
	        state += 1;
	        Move_Character(_Max,"Up",1,3);
			alarm[0] = 45 * global.xspeed;
	    break;
		
		
		
		
		
		
		
		case 76:
		state += 1;
	        Set_Camera_Target(_jason);
			_jason.cutscene_mode = false;
			_jason.allow_interaction = true;
			global.PTC = true;
	    break;
		
		
	}


}