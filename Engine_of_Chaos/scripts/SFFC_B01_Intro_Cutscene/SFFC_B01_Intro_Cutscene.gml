// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SFFC_B01_Intro_Cutscene(){
	
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
	        state += 1;
			Pan_Camera_To_Location(300,288,false,9);
			Move_Character(_Mishaela,"Up",3,2)
			alarm[0] = 10 * global.xspeed;
	    break;
	    case 1:
	        state += 1;
	        Move_Character(_Mishaela,"Right",3,2)
			alarm[0] = 10 * global.xspeed;
	    break;
	    case 2:
	        state += 1;
	        Play_Sound(sfx_Hit);
	        Move_Character(_Lynx,"Right",.5,6);
	        Move_Character(_Max,"Right",2,6);//character,direction,tiles,speed
	    break;
	    case 3:
	        state += 1;
			
	    break;
	    case 4:
	        state += 1;
	        Move_Character(_Max,"Up",6.5,6);//character,direction,tiles,speed
	    break;
	    case 5:
	        Play_Sound(sfx_Door);
	        Move_Character(_Max,"Down",.5,3,"Up");
	        state += 1;
	    break;
	    case 6:
	        state += 1;
	        Move_Character(_Max,"Up",.5,3,"Up");
	    break;
	    case 7:
	        Play_Sound(sfx_Door);
	        Move_Character(_Max,"Down",.5,3,"Up");
	        state += 1;
	    break;
	    case 8:
	        state += 1;
	        Move_Character(_Max,"Up",.5,3,"Up");
	    break;
	    case 9:
	        Play_Sound(sfx_Door);
	        Move_Character(_Max,"Down",.5,3,"Up");
	        state += 1;
	    break;
	    case 10:
	        state += 1;
	        Move_Character(_Lynx,"Right",.5,2);
	    break;
	    case 11:
	        state += 1;
	        Shake_Head(_Lynx);
	    break;
	    case 12:
	        state += 1;
	        Create_Character_Dialogue("Local",_Max,"Mishaela wake up!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 13:
	        state += 1;
	        Move_Character(_Lynx,"Right",1,2);
	        Move_Character(_Max,"Up",.5,6,"Up");
	    break;
	    case 14:
	        Play_Sound(sfx_Door);
	        Move_Character(_Max,"Down",.5,6,"Up");
	        state += 1;
	    break;
	    case 15:
	        state += 60;
	        Move_Character(_Max,"Up",.5,6,"Up");
	    break;
	    
	    case 74:
	        state += 1;
	        Create_Character_Dialogue("Local",_Lynx,"Come on.^ Let's go get him.",id,true,true);
	    break;
	    case 75:
	        state += 1;
	        Create_Dialogue(noone,noone,"Mishaela joins the party.",id,false,true);//portrait, voice, message,object,arrow,pan
	        Stop_Dialogue_Interaction();
	        Wait_For_Sound(sfx_Join_Party,obj_Dialogue_Controller);
	    break;
	    case 76:
			Set_Character_Stats(_Max);
	        Set_Camera_Target(_Lynx);
	        instance_destroy();
	    break;
	}


}