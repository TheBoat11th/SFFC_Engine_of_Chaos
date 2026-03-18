// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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
	        state += .1;
			global.PTC = false;
			Pan_Camera_To_Location(288,600,false,999);
			Move_Character(_Mishaela,"Up",9,3)
			Move_Character(_Lynx,"Up",9,3);
			Move_Character(_Eiku,"Up",10,2);
			alarm[0] = 20 * global.xspeed;
	    break;
		case 0.1:
	        state += .9;
	        _jason.cutscene_mode = true;
			_Eiku.cutscene_mode = true;
			_Magus.cutscene_mode = true;
			_jason.allow_interaction = false;
			alarm[0] = 5 * global.xspeed;
	    break;
	    case 1:
	        state += 1;
	        Move_Character(_Magus,"Up",9,2)
			alarm[0] = 120 * global.xspeed;
	    break;
	    case 2:
	        state += 1;
			Face_Direction(_Lynx,"Left")
			alarm[0] = 30 * global.xspeed;
	        Move_Character(_Mishaela,"Left",2,2);
			alarm[0] = 50 * global.xspeed;
	    break;
	    case 3:
	        state += 1;
			Move_Character(_Eiku,"Up",1,2);//character,direction,tiles,speed
			alarm[0] = 30 * global.xspeed;
	    break;
	    case 4:
	        state += 1;
			Move_Character(_Magus,"Up",3,2);//character,direction,tiles,speed
	        Move_Character(_Eiku,"Left",1,2);//character,direction,tiles,speed
			alarm[0] = 30 * global.xspeed;
	    break;
	    case 5:
			state += 1;
	        //Move_Character(_Magus,"Up",1,3);
			alarm[0] = 1 * global.xspeed;
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
			alarm[0] = 990 * global.xspeed;
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
	        Play_Sound(sfx_Door);
	        Create_Character_Dialogue("Local",_Mishaela,"What are you saying, Max?^ If that's the case, it's time to finish me, don't you think? ^Too bad I'm not the same old Misheala you defeated before!",id,true,true);
	    break;
	    case 15:
	        state += 1;
	        Move_Character(_Lynx,"Left",1,1);
			alarm[0] = 25 * global.xspeed;
	    break;
		case 16:
	        state += 58;
	        Face_Direction(_Lynx,"Up")
			alarm[0] = 10 * global.xspeed;
	    break;
		
	    case 74:
	        state += 1;
	        Create_Character_Dialogue("Local",_Lynx,"Mistress Mishaela, I am here!^ You can always rely on Lynx.^ Leave them to me.",id,true,true);
	    break;
	    case 75:
	        state += 1;
	        Create_Dialogue(noone,noone,"Mishaela joins the party.",id,false,true);//portrait, voice, message,object,arrow,pan
			global.PTC = false;
	        //Stop_Dialogue_Interaction();
	        //Wait_For_Sound(sfx_Join_Party,obj_Dialogue_Controller);
	    break;
	    case 76:
	        Set_Camera_Target(_jason);
			_jason.cutscene_mode = false;
			_jason.allow_interaction = true;
	    break;
	}


}