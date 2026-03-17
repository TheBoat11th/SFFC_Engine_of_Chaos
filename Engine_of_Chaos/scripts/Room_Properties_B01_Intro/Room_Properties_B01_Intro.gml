
function Room_Creation_B01_Intro_Cutscene(){
	var _player;
	        Finish_Room_Transition(noone);//Cancel default room transition event
	        _player = Create_Player(240,744,"Down","AU_Jason",false,true);//x,y,direction,id,allow_interaction,cutsene_mode
			Start_Cutscene("SFFC_B01_Intro_Cutscene",_player);
	        Play_Music(noone,"Fade_To_Next",250,0);
	Start_Room(_player);
}
