// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SFFC_B02_Adam_Cutscene(){

	var _jason = player_trigger;
	var _Ian = Get_Character("Ian","Default");
	var _Elder = Get_Character("Elder","Default");
	var _Adam = Get_Character("Adam","Default");
	var _Mead = Get_Character("Mead","Default");
	var _Paige = Get_Character("Paige","Default");
	var _Sonette = Get_Character("Sonette","Default");
	var _Hawel = Get_Character("Hawel","Default");
	var _Cynthia = Get_Character("Cynthia","Default");
	var _Knuckles = Get_Character("Knuckles","Default");
	
	switch(state){
		case 0:
			state += 3;
	        Create_Screen_Fade(c_black,1,2,0,"out",id);//Color, Alpha, Stop, Speed, Direction, Current Object
	        alarm[0] = 1;
			//Face_Direction(_Adam,"Right");
	        //Face_Direction(_Elder,"Left");
	    break;
		case 1:
			state += 2;
			_jason.cutscene_mode = true;
	        _Ian.cutscene_mode = true;
			_Elder.cutscene_mode = true;
	        _Adam.cutscene_mode = true;
			_Mead.cutscene_mode = true;
			_Paige.cutscene_mode = true;
			_Sonette.cutscene_mode = true;
			_Hawel.cutscene_mode = true;
			_Cynthia.cutscene_mode = true;
			_Knuckles.cutscene_mode = true;
			 Face_Direction(_Adam,"Right")
			 Face_Direction(_Elder,"Left")
		break;
	case 3:
	        state += 1;
	         Create_Dialogue(noone,Get_Character_Voice("Global",1,"Total"),"The Shining Force fought a long battle at the ancient temple on the continent of Parmecia.\n Adam was injured, and so they returned to the port town of Hassan to heal him...",id,true,true);//portrait, voice, message,object,arrow,pan
		break;																																																								//repair
	case 4:
	        state += 1;
	        Pan_Camera_To_Location(528,288,,99);
			alarm[0] = 4 * global.xspeed;
	    break;
	    case 5:
	        state += 1;
	        Continue_Screen_Fade(0,.04,"in",id);
	    break;
	    case 6:
	        state += 1;
			Create_Character_Dialogue("Local",_Elder,"How are you feeling, Adam?^ Is the wound any better, I wonder?",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;																	//Are the repairs working, I wonder?
		case 7:
	        state += .1;
			Create_Character_Dialogue("Local",_Adam,"It's hopeless. I don't think I'll be able to fight anymore.^ The others will be able to fight though, they're strong enough.^ We should set out to find Max as soon as possible.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
		case 7.1:
			state += .1;
			Nod_Head(_Elder);
			alarm[0] = 15 * global.xspeed;
		break;
		case 7.2:
			state += .8;
			//instance_destroy(obj_Screen_Fade_Controller);
			alarm[0] = 10 * global.xspeed;
		break;
		case 8:
	        state += .1;
			Create_Character_Dialogue("Local",_Elder,"If you think it's necessary Adam, set up a persuing party.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
		case 8.1:
			state += .9;
			Nod_Head(_Adam);
			alarm[0] = 20 * global.xspeed;
		break;
		case 9:
	        state += .1;
			Create_Character_Dialogue("Local",_Adam,"Right. If we don't save Max, the world may be destroyed!^ For that reason, we should leave here and try to pick up his trail.^ Don't worry though, we'll be back.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
		//Indeed. I must Protect Master Max, and prevent the entire world from being destroyed!
		case 9.1:
	        state += .9;
			global.PTC = false;
			alarm[0] = 15 * global.xspeed;
		break;
		case 10:
	        state += 1;
			Move_Character(_Sonette,"Up",10,3);
			//Move_Character(_Mead,"Up",6,2);
			//Move_Character(_Paige,"Up",6,2);
			alarm[0] = 120 * global.xspeed;
		break;
		case 11:
	        state += 1.5;
			 Move_Character(_Sonette,"Right",2,2);
			 alarm[0] = 20 * global.xspeed;
		break;
		case 12.5:
	        state += .1;
			//Move_Character(_Sonette,"Up",6,1);
			Move_Character(_Mead,"Up",11,3);
			//Move_Character(_Paige,"Up",6,2);
			alarm[0] = 120 * global.xspeed;
		break;
		case 12.6:
	        state += .4;
			//Move_Character(_Sonette,"Up",6,1);
			//Move_Character(_Mead,"Up",6,2);
			Move_Character(_Mead,"Right",1,2);
			alarm[0] = 120 * global.xspeed;
		break;
		case 13:
	        state += 1;
			 Move_Character(_Paige,"Up",12,3);
			 alarm[0] = 120 * global.xspeed;
		break;
		case 14:
	        state += 1;
			 Face_Direction(_Adam,"Down")
			 Face_Direction(_Elder,"Down")
			 alarm[0] = 20 * global.xspeed;
		break;
		case 15:
	        state += 9;
			 Move_Character(_Mead,"Up",1,2);
			 alarm[0] = 10 * global.xspeed;
		break;
		
		case 23:
	        state += 1;
			Create_Character_Dialogue("Local",_Mead,"We'd all like to see this plan succeed, wouldn't we Adam?^ I'm concerned that we're leaving Hassan without any supervision.^ What if we are defeated, and never return?",id,true,true);//portrait, voice, message,object,arrow,pan
	    //Adam should be doing fine now. When we brought him here to Hassan, I was worried he might never return to normal 
		break;
		case 24:
	        state += 1;
			Create_Character_Dialogue("Local",_Adam,"There's no need to worry, Mead. I'm happy to go with you as an advisor.^ If we don't do something, we'll never put an end to this.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
		//There's a self-repairing mechanism inside me. I may not be completely repaired yet, but I'm not about to become a useless piece of metal!
		case 25:
	        state += 1;
			 Move_Character(_Paige,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 26:
	        state += 1;
			 Face_Direction(_Paige,"Right")
			 alarm[0] = 40 * global.xspeed;
		break;
		case 27:
	        state += 1;
			 Face_Direction(_Paige,"Up")
			 alarm[0] = 20 * global.xspeed;
		break;
		case 28:
	        state += 1;
			Create_Character_Dialogue("Local",_Paige,"Nonetheless, we'll still worry a little.^ Adam, Mead - I think our search will be successful, don't you?",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;																					//Adam is delicate, unlike Mead!
		case 29:
	        state += 1;
			 Move_Character(_Sonette,"Left",1,2);
			 alarm[0] = 25 * global.xspeed;
		break;
		case 30:
	        state += 1;
			 Face_Direction(_Sonette,"Up")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 31:
	        state += 1;
			 Move_Character(_Mead,"Right",1,2,"Up");
			 alarm[0] = 25 * global.xspeed;
		break;
		case 32:
	        state += 1;
			 Move_Character(_Sonette,"Up",1,2)
			 alarm[0] = 20 * global.xspeed;
		break;
		
		case 33:
	        state += 1;
			 Face_Direction(_Sonette,"Left")
			 alarm[0] = 20 * global.xspeed;
		break;
		case 34:
	        state += 28;
			 Face_Direction(_Mead,"Left")
			 alarm[0] = 20 * global.xspeed;
		break;
		case 62:
	        state += 1;
			 Face_Direction(_Paige,"Right")
			 alarm[0] = 20 * global.xspeed;
		break;
		case 63:
	        state += 1;
			Create_Character_Dialogue("Local",_Sonette,"Well, Paige & Adam, I can't imagine how we're going to manage this!^ I mean, Hawel's only an apprentice mage, he still has a lifetime of study ahead of him. How useful would it be to have him at hand?!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;											//"That's right Paige, who would have imagined how Adam managed to recover?!^ For an apprentice mage like Hawel, this will be the sight of a lifetime!"
		case 64:
	        state += .2;
			Create_Character_Dialogue("Local",_Hawel,"You're out of line!^ What do you think you're saying?",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;										//"What are you saying about me this time, Sonette?"
		
		case 64.2:
	        state += .1;
			 Face_Direction(_Sonette,"Down")
			 alarm[0] = 1 * global.xspeed;
		break;
		case 64.3:
	        state += .1;
			 Face_Direction(_Mead,"Down")
			 alarm[0] = 1 * global.xspeed;
		break;
		case 64.4:
	        state += .1;
			 Face_Direction(_Paige,"Down")
			 alarm[0] = 1 * global.xspeed;
		break;
		case 64.5:
	        state += .1;
			 Move_Character(_Hawel,"Left",1,6,"Up");
			 alarm[0] = 25 * global.xspeed;
		break;
		case 64.6:
	        state += .1;
			 Pan_Camera_To_Location(528,340,,3)
			 //Pan_Camera_To_Target(_Hawel,1)
			 alarm[0] = 20 * global.xspeed;
		break;
		
		//Hawel arrives
		case 64.7:
	        state += .1;
			 Move_Character(_Hawel,"Up",10,6);
			 alarm[0] = 120 * global.xspeed;
		break;
		case 64.8:
	        state += .1;
			 Move_Character(_Hawel,"Right",1,6);
			 alarm[0] = 25 * global.xspeed;
		break;
		case 64.9:
	        state += .1;
			 Face_Direction(_Hawel,"Up");
			 alarm[0] = 25 * global.xspeed;
		break
		case 65:
	        state += .5;
			 Pan_Camera_To_Location(528,284,,3)
			 alarm[0] = 20 * global.xspeed;
		break;
		
		case 65.5:
	        state += .1;
			Create_Character_Dialogue("Local",_Hawel,"Sonette, are you telling me that I'm just some useless academic?^ Yet despite that, I almost always have to show you what to do and help you out!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;										//"Do you really think I'm just some useless academic?^ I've already taught you so much. What a waste of time!"
		case 65.6:
	        state += .1;
	        Shudder(_Sonette);
			alarm[0] = 20 * global.xspeed;
	    break;
		case 65.7:
	        state += .1;
			Create_Character_Dialogue("Local",_Sonette,"Just kidding, just kidding!^ I've often had to depend on you, and your experience, Hawel.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
		case 65.8:
	        state += .1;
			 Move_Character(_Adam,"Right",1,4);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 65.9:
	        state += .1;
			 Face_Direction(_Adam,"Down")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 66:
	        state += .3;
			Create_Character_Dialogue("Local",_Adam,"Okay everybody, let's do it, shall we?!^ Well, let's head across to the ancient temple to see what devils we must face!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;									//"Okay, is everybody here? Well, let's journey to the ancient temple to see what devils we must face!"
		case 66.3:
	        state += .1;
			 Face_Direction(_Sonette,"Up")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 66.4:
	        state += .1;
			 Face_Direction(_Mead,"Up")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 66.5:
	        state += .1;
			 Face_Direction(_Paige,"Up")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 66.6:
	        state += .4;
			 Perform_Jump(_Sonette,2,1)
			 alarm[0] = 25 * global.xspeed;
		break;
		case 67:
	        state += .1;
			Create_Character_Dialogue("Local",_Sonette,"Just a minute!^ Shouldn't Knuckles be going with us now?",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
		//Just a minute!^ Shouldn't Knuckles be going with us?"
		case 67.1:
	        state += .9;
			 Face_Direction(_Paige,"Right")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 68:
	        state += .1;
			Create_Character_Dialogue("Local",_Paige,"That guy must have slept in again. He's let Max down this time, he doesn't deserve to come with us.^ He's always late, and we always have to wait for him. We'll be waiting until nightfall for him to wake up and get here!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;										//"That lazybones must have slept in again. He's really let Max down this time, he doesn't deserve to come with us.^ He's always late, and we always have to wait for him. We'll be waiting all day for him to wake up and get here!"
		case 68.1:
	        state += .1;
			 Face_Direction(_Paige,"Down")
			 alarm[0] = 15 * global.xspeed;
		break;
		case 68.2:
	        state += .2
			 Move_Character(_Hawel,"Left",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 68.4:
	        state += .6;
			 Face_Direction(_Hawel,"Down")
			 alarm[0] = 15 * global.xspeed;
		break;
		case 69:
	        state += .1;
			Create_Character_Dialogue("Local",_Hawel,"That's right. He's got no excuse.^ When he comes out, he can join us. Let's go now.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;										//"That's right. There's no reason to let him delay us.^ When he comes out, he can join us.^ Let's go now."
		case 69.1:
	        state += .9;
			 Face_Direction(_Elder,"Left")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 70:
	        state += .1;
			Create_Character_Dialogue("Local",_Elder,"Oh dear! Knuckles, what shall we do with you!^ If he shows up, I'll tell him you've already left.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
		case 70.1:
	        state += .1;
			 Face_Direction(_Adam,"Right")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 70.2:
	        state += .1;
			 Face_Direction(_Paige,"Up")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 70.3:
	        state += .1;
			 Face_Direction(_Hawel,"Up")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 70.4:
	        state += .1;
			Create_Character_Dialogue("Local",_Adam,"Thank you. We couldn't ask for more.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
		case 70.5:
	        state += .5;
			 Set_Camera_Target(_Sonette);
			 alarm[0] = 15 * global.xspeed;
		break;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		case 114:
	        state += 1;
			Create_Character_Dialogue("Local",_Adam,"Well then, Elder, myself and the others should leave for the Ancient temple now.^ We'll return soon.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;														//our group should leave
		case 115:
	        state += 1;
			Create_Character_Dialogue("Local",_Elder,"I'll be here waiting for you.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
		case 116:
	        state += 1;
			 Face_Direction(_Elder,"Left");
			 alarm[0] = 5 * global.xspeed;
		break;
		//Move Cynthia and Ian
		case 117:
	        state += 1;
			 Move_Character(_Cynthia,"Right",14,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 118:
	        state += 1;
			Move_Character(_Ian,"Right",14,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 119:
	        state += 1;
			Create_Character_Dialogue("Local",_Cynthia,"With respect, Elder, please could you let Ian come with us?",id,true,true);//portrait, voice, message,object,arrow,pan
	     											//Grandpa, could Ian please have a word with you?
		break;
		case 120:
	        state += 1;
			Create_Character_Dialogue("Local",_Elder,"Don't be so tiresome, Cynthia.^ He's too busy training inside right now.",id,true,true);//portrait, voice, message,object,arrow,pan
			//Alright.^ Wait inside, I'll be there in a momment.
		break;
		case 121:
			state += 1;
			Move_Character(_Elder,"Right",1,6,"Left");
			alarm[0] = 5 * global.xspeed;
		break;
		case 122:
		    state += 1;
			 Move_Character(_Cynthia,"Right",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 123:
		    state += 1;
			 Move_Character(_Cynthia,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 124:
		    state += 1;
			 Move_Character(_Ian,"Right",2,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 125:
	        state += 1;
			 Move_Character(_Cynthia,"Up",6,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 126:
	        state += 1;
			 Move_Character(_Ian,"Up",6,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 127:
	        state += 33;
			 Move_Character(_Elder,"Left",1,6,"Down");
			 alarm[0] = 5 * global.xspeed;
		break;
		case 160:
	        state += 1;
			Create_Character_Dialogue("Local",_Elder,"You and the others, go on ahead. Maybe you'll meet up with him back here in Hassan later on.^ To tell you the truth, Adam, there's something I want to tell you...^^ ...because of the situation, I'll tell you when you return from the ancient temple.",id,true,true);//portrait, voice, message,object,arrow,pan
		//Ian became lost on his journey and came to Hassen by coincidence. I beleive Ian has something to tell Adam, too... ...but I suppose he will have to wait until you return.
	    break;
		case 161:
	        state += 1;
			 Move_Character(_Paige,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 162:
	        state += .1;
			Create_Character_Dialogue("Local",_Paige,"Well then....^ Let's go to the ancient temple!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
		case 162.1:
			state += .9;
			Set_Camera_Target(_Sonette);
			alarm[0] = 5 * global.xspeed;
		break;
		case 163:
	        state += 1;
			 Move_Character(_Adam,"Left",1,6);
			 Move_Character(_Paige,"Left",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 164:
	        state += 1;
			 Move_Character(_Sonette,"Left",1,6);
			 Move_Character(_Adam,"Left",1,6);
			 Move_Character(_Paige,"Left",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 165:
	        state += 1;
			 Move_Character(_Adam,"Up",1,6);
			 Move_Character(_Paige,"Left",1,6);
			 Move_Character(_Mead,"Left",1,6);
			 Move_Character(_Hawel,"Left",1,6);
			 Move_Character(_Sonette,"Left",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 166:
	        state += 2;
			Move_Character(_Adam,"Up",1,6);
			Move_Character(_Paige,"Up",1,6);
			Move_Character(_Mead,"Up",1,6);
			Move_Character(_Hawel,"Left",1,6);
			Move_Character(_Sonette,"Left",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 168:
	        state += 1;
			Move_Character(_Adam,"Left",1,6);
			Move_Character(_Paige,"Up",1,6);
			Move_Character(_Mead,"Up",1,6);
			Move_Character(_Hawel,"Up",1,6);
			Move_Character(_Sonette,"Left",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 169:
	        state += 1;
			Move_Character(_Adam,"Left",1,6);
			Move_Character(_Paige,"Left",1,6);
			Move_Character(_Mead,"Up",1,6);
			Move_Character(_Hawel,"Up",1,6);
			Move_Character(_Sonette,"Up",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 170:
	        state += 3;
			Move_Character(_Adam,"Up",1,6);
			Move_Character(_Paige,"Left",1,6);
			Move_Character(_Mead,"Left",1,6);
			Move_Character(_Hawel,"Up",1,6);
			Move_Character(_Sonette,"Up",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 173:
			state += 1;
			Move_Character(_Adam,"Left",1,6);
			Move_Character(_Paige,"Up",1,6);
	        Move_Character(_Mead,"Left",1,6);
			Move_Character(_Hawel,"Left",1,6);
			Move_Character(_Sonette,"Up",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 174:
	        state += 1;
			Move_Character(_Adam,"Left",9,6);
			Move_Character(_Paige,"Left",9,6);
			Move_Character(_Mead,"Left",9,6);
			Move_Character(_Hawel,"Left",9,6);
			Move_Character(_Sonette,"Left",9,6);
			alarm[0] = 40 * global.xspeed;
		break;
		case 175:
	        state += .1;
			Move_Character(_Adam,"Up",1,6);
			Move_Character(_Paige,"Left",1,6);
			Move_Character(_Mead,"Left",1,6);
			Move_Character(_Hawel,"Left",1,6);
			Move_Character(_Sonette,"Left",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 175.1:
	        state += .9;
			Move_Character(_Adam,"Up",1,6);
			Move_Character(_Paige,"Up",1,6);
			Move_Character(_Mead,"Up",1,6);
			Move_Character(_Hawel,"Left",1,6);
			Move_Character(_Sonette,"Left",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 176:
	        state += 1;
			Move_Character(_Adam,"Up",1,6);
			Move_Character(_Paige,"Up",1,6);
			Move_Character(_Mead,"Up",1,6);
			Move_Character(_Hawel,"Up",1,6);
			Move_Character(_Sonette,"Left",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 177:
	        state += 1;
			Move_Character(_Adam,"Left",1,6);
			Move_Character(_Paige,"Up",1,6);
			Move_Character(_Mead,"Up",1,6);
			Move_Character(_Hawel,"Up",1,6);
			Move_Character(_Sonette,"Up",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 178:
	        state += 1;
			Move_Character(_Adam,"Left",1,6);
			Move_Character(_Paige,"Left",1,6);
			Move_Character(_Mead,"Up",1,6);
			Move_Character(_Hawel,"Up",1,6);
			Move_Character(_Sonette,"Up",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 179:
	        state += 1;
			Move_Character(_Adam,"Up",1,6);
			Move_Character(_Paige,"Left",1,6);
			Move_Character(_Mead,"Left",1,6);
			Move_Character(_Hawel,"Up",1,6);
			Move_Character(_Sonette,"Up",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 180:
	        state += 1;
			Move_Character(_Adam,"Up",1,6);
			Move_Character(_Paige,"Up",1,6);
			Move_Character(_Mead,"Left",1,6);
			Move_Character(_Hawel,"Left",1,6);
			Move_Character(_Sonette,"Up",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 181:
	        state += 1;
			Move_Character(_Adam,"Up",1,6);
			Move_Character(_Paige,"Up",1,6);
			Move_Character(_Mead,"Up",1,6);
			Move_Character(_Hawel,"Left",1,6);
			Move_Character(_Sonette,"Left",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 182:
	        state += 1;
			Move_Character(_Adam,"Up",1,6);
			Move_Character(_Paige,"Up",1,6);
			Move_Character(_Mead,"Up",1,6);
			Move_Character(_Hawel,"Up",1,6);
			Move_Character(_Sonette,"Left",1,6);
			alarm[0] = 5 * global.xspeed;
		break;
		case 183:
	        state += 223;
			Move_Character(_Adam,"Up",2,6);
			Move_Character(_Paige,"Up",2,6);
			Move_Character(_Mead,"Up",2,6);
			Move_Character(_Hawel,"Up",2,6);
			Move_Character(_Sonette,"Up",2,6);
			alarm[0] = 5 * global.xspeed;
		break;
		
		case 406:
	        state += 2;
			Create_Character_Dialogue("Local",_Knuckles,"Oi! Wait up!^ I'm all set to come along and do my best!",id,true,true);//portrait, voice, message,object,arrow,pan
			//"Hey!^ Wait up!^ I'm all set to come along and do my best!"
		break;	
		case 408:
	        state += 1;
			Pan_Camera_To_Location(288,356,,4)
			alarm[0] = 5 * global.xspeed;
		break;
		case 409:
	        state += 1;
			 Move_Character(_Elder,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 410:
	        state += 19;
			 Move_Character(_Knuckles,"Left",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 429:
	        state += .1;
			 Move_Character(_Knuckles,"Left",19,6);
			 alarm[0] = 90 * global.xspeed;
		break;
		case 429.1:
	        state += .1;
			 Face_Direction(_Knuckles,"Up");
			 alarm[0] = 5 * global.xspeed;
		break;
		case 429.2:
	        state += .1;
			 Perform_Jump(_Knuckles,2)
			 alarm[0] = 55 * global.xspeed;
		break;
		case 429.3:
	        state += .7;
			 Perform_Jump(_Knuckles,2)
			 alarm[0] = 5 * global.xspeed;
		break;
		case 430:
	        state += .1;
			Create_Character_Dialogue("Local",_Sonette,"Knuckles,  it's you!^ You arrived just in time to set out with us. We're setting off for the ancient temple.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;															//What in the world were you thinking, arriving so late?!^ If you haden't got here in time, we'd be setting off for the ancient temple without you!
		case 430.1:
	        state += .9;
			Set_Camera_Target(_Knuckles);
			alarm[0] = 5 * global.xspeed;
		break;
		case 431:
	        state += 1;
			 Move_Character(_Knuckles,"Up",5,6);
			 alarm[0] = 15 * global.xspeed;
		break;
		case 432:
	        state += 4;
			Pan_Camera_To_Location(216,240,,2)
			alarm[0] = 5 * global.xspeed;
		break;
		case 436:
	        state += 1;
			 Move_Character(_Knuckles,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 437:
	        state += 1;
			 Move_Character(_Knuckles,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 438:
	        state += 1;
			 Move_Character(_Hawel,"Left",1,6,"Right");
			 alarm[0] = 5 * global.xspeed;
		break;
		case 439:
	        state += 1;
			 Move_Character(_Knuckles,"Left",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 440:
	        state += 1;
			 Move_Character(_Knuckles,"Left",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 441:
	        state += 1;
			 Move_Character(_Paige,"Right",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 442:
	        state += 1;
			 Move_Character(_Paige,"Down",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 443:
	        state += 1;
			 Move_Character(_Paige,"Down",1,6,"Left");
			 alarm[0] = 5 * global.xspeed;
		break;
		case 444:
	        state += 1;
			 Face_Direction(_Knuckles,"Right")
			 alarm[0] = 15 * global.xspeed;
		break;
		case 445:
	        state += 1;
			 Face_Direction(_Knuckles,"Left")
			 alarm[0] = 15 * global.xspeed;
		break;
		case 446:
	        state += 1;
			 Face_Direction(_Knuckles,"Right")
			 alarm[0] = 15 * global.xspeed;
		break;
		case 447:
	        state += 1;
			 Face_Direction(_Knuckles,"Left")
			 alarm[0] = 15 * global.xspeed;
		break;
		case 448:
	        state += 1;
			 Face_Direction(_Knuckles,"Up")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 449:
	        state += 1;
			 Shudder(_Knuckles,2)
			 alarm[0] = 5 * global.xspeed;
		break;
		case 450:
	        state += 1;
			Create_Character_Dialogue("Local",_Knuckles,"Ha ha! Sorry, sorry!^ I slept in late...^ then rushed to get ready! I came because I knew how important this is.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;																												//"I'm here because I know how important this is."
		case 451:
	        state += 1;
			 Shudder(_Knuckles,2)
			 alarm[0] = 5 * global.xspeed;
		break;
		case 452:
	        state += 1;
			Create_Character_Dialogue("Local",_Adam,"Come along then, it's time to depart.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
		case 453:
	        state += 1;
			 Move_Character(_Hawel,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 454:
	        state += .1;
			 Move_Character(_Knuckles,"Left",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 454.1:
	        state += .9;
			 Face_Direction(_Paige,"Up")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 455:
	        state += 1;
			 Move_Character(_Knuckles,"Left",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 456:
	        state += 1;
			 Move_Character(_Knuckles,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 457:
	        state += 1;
			 Move_Character(_Knuckles,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 458:
	        state += 1;
			 Move_Character(_Knuckles,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 459:
	        state += .1;
			 Move_Character(_Knuckles,"Right",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 459.1:
	        state += .1;
			 Perform_Jump(_Knuckles,1)
			 alarm[0] = 25 * global.xspeed;
		break;
		case 459.2:
	        state += .1;
			 Face_Direction(_Knuckles,"Down")
			 alarm[0] = 5 * global.xspeed;
		break;
		case 459.3:
	        state += .7;
			 Perform_Jump(_Knuckles,1)
			 alarm[0] = 5 * global.xspeed;
		break;
		case 460:
	        state += 1;
			Create_Character_Dialogue("Local",_Knuckles,"Well everyone...^ let's go!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;										  //"Well everyone,^ let's go!"
	    case 461:
	        state += 1;
			 Perform_Jump(_Paige,2)
			 alarm[0] = 15 * global.xspeed;
		break;
		case 462:
	        state += 1;
			 Move_Character(_Knuckles,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 463:
	        state += 1;
			 Move_Character(_Adam,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 464:
	        state += 1;
			 Move_Character(_Mead,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 465:
	        state += 1;
			 Move_Character(_Hawel,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 466:
	        state += 1;
			 Move_Character(_Sonette,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 467:
	        state += 1;
			 Move_Character(_Knuckles,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 468:
	        state += 1;
			 Move_Character(_Adam,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 469:
	        state += 1;
			 Move_Character(_Mead,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 470:
	        state += 1;
			 Move_Character(_Hawel,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 471:
	        state += 1;
			 Move_Character(_Sonette,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 472:
	        state += 1;
			 Move_Character(_Mead,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 473:
	        state += 1;
			 Move_Character(_Hawel,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 474:
	        state += 1;
			 Move_Character(_Sonette,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 475:
	        state += 1;
			 Move_Character(_Sonette,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 476:
	        state += 1;
			 Move_Character(_Knuckles,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 477:
	        state += 1;
			 Move_Character(_Adam,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 478:
	        state += 1;
			 Move_Character(_Mead,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 479:
	        state += 1;
			 Move_Character(_Hawel,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 480:
	        state += 1;
			 Move_Character(_Sonette,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 481:
	        state += 1;
			 Move_Character(_Knuckles,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 482:
	        state += 1;
			 Move_Character(_Adam,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 483:
	        state += 1;
			 Move_Character(_Mead,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 484:
	        state += 1;
			 Move_Character(_Hawel,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 485:
	        state += 1;
			 Move_Character(_Sonette,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 486:
	        state += 1;
			 Move_Character(_Knuckles,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 487:
	        state += 1;
			 Move_Character(_Adam,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 488:
	        state += 1;
			 Move_Character(_Mead,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 489:
	        state += 1;
			 Move_Character(_Hawel,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 490:
	        state += 1;
			 Move_Character(_Sonette,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 491:
	        state += 1;
			 Move_Character(_Knuckles,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 492:
	        state += 1;
			 Move_Character(_Adam,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 493:
	        state += 1;
			 Move_Character(_Mead,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 494:
	        state += 1;
			 Move_Character(_Hawel,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 495:
	        state += 1;
			 Move_Character(_Sonette,"Up",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		
		
		
		case 496:
	        state += 1;
			 Perform_Jump(_Paige,1)
			 alarm[0] = 15 * global.xspeed;
		break;
		case 497:
	        state += 1;
			Move_Character(_Paige,"Left",1,6);
			 alarm[0] = 5 * global.xspeed;
		break;
		case 498:
	        state += 1;
			Move_Character(_Paige,"Up",4,6);
			 alarm[0] = 50 * global.xspeed;
		break;
		case 499:
			global.PTC = true;
			Set_Camera_Target(_jason);
	        _jason.cutscene_mode = false;
	        _Ian.cutscene_mode = false;
			_Elder.cutscene_mode = false;
	        _Adam.cutscene_mode = false;
			_Mead.cutscene_mode = false;
			_Paige.cutscene_mode = false;
			_Sonette.cutscene_mode = false;
			_Hawel.cutscene_mode = false;
			_Cynthia.cutscene_mode = false;
			_Knuckles.cutscene_mode = false;
	        _jason.allow_interaction = true;
	        global.Story_State += 1;
	        Play_Music(bgm_Town,"Fade_To_Next",250,0);
	        instance_destroy();
	    break;
	}


}