// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SFFC_Intro_Cutscene(){
	

	var _Lynx = Get_Character("Lynx","Default");
	var _max = Get_Character("Max","Default");
	var _Mishaela = Get_Character("Mishaela","Default");
	var _milkshake = Get_Character("Milkshake","Default");

	switch(state){
	    case 0:
	        state += 1;//Note, Max will be mid-movement at this point, so both the player and max will trigger this event almost back to back
	        _Lynx.allow_interaction = false;
	        _Lynx.cutscene_mode = true;
	        _max.cutscene_mode = true;
	    break;
	    case 1:
	        state += 1;
	        Stop_Following_Character(_max);
	        Move_Character(_max,"Right",1,6);//character,direction,tiles,speed
	    break;
	    case 2:
	        state += 1;
	        Play_Sound(sfx_Hit);
	        _max.depth -= 2;
	        Pan_Camera_To_Location(840,336,false);
	        Move_Character(_Lynx,"Right",.5,6);
	        Move_Character(_max,"Right",2,6);//character,direction,tiles,speed
	    break;
	    case 3:
	        state += 1;
	        _Lynx.rotation = 270;
	        _Lynx.y += 8;
	        _Lynx.image_speed = 0;
	    break;
	    case 4:
	        state += 1;
	        _max.depth += 2;
	        Move_Character(_max,"Up",6.5,6);//character,direction,tiles,speed
	    break;
	    case 5:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,3,"Up");
	        state += 1;
	    break;
	    case 6:
	        state += 1;
	        Move_Character(_max,"Up",.5,3,"Up");
	    break;
	    case 7:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,3,"Up");
	        state += 1;
	    break;
	    case 8:
	        state += 1;
	        Move_Character(_max,"Up",.5,3,"Up");
	    break;
	    case 9:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,3,"Up");
	        state += 1;
	    break;
	    case 10:
	        state += 1;
	        _Lynx.rotation = 0;
	        _Lynx.y -= 8;
	        Move_Character(_Lynx,"Right",.5,2);
	    break;
	    case 11:
	        state += 1;
	        Shake_Head(_Lynx);
	    break;
	    case 12:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,"Mishaela wake up!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 13:
	        state += 1;
	        _Lynx.custom_move_script = "Character_Movement_Lynx_01";
	        Move_Character(_Lynx,"Right",1,2);
	        Move_Character(_max,"Up",.5,6,"Up");
	    break;
	    case 14:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,6,"Up");
	        state += 1;
	    break;
	    case 15:
	        state += 60;
	        Move_Character(_max,"Up",.5,6,"Up");
	    break;
	    
	    case 74:
	        state += 1;
	        Create_Character_Dialogue("Local",_Lynx,"Come on.^ Let's go get him.",id,true,true);
	    break;
	    case 75:
	        state += 1;
	        Join_Party("Global",2,"Player",true,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	        Follow_Character(_Mishaela,_Lynx);
	        Create_Dialogue(noone,noone,"Mishaela joins the party.",id,false,true);//portrait, voice, message,object,arrow,pan
	        Stop_Dialogue_Interaction();
	        Wait_For_Sound(sfx_Join_Party,obj_Dialogue_Controller);
	    break;
	    case 76:
	        _Lynx.cutscene_mode = false;
	        _Lynx.allow_interaction = true;
	        _Mishaela.cutscene_mode = false;
			global.Story_State += 1;
			Set_Character_Stats(_max);
			Set_Character_Stats(_milkshake);
	        Set_Camera_Target(_Lynx);
	        instance_destroy();
	    break;
	}


}