if(allow_interaction){//if pressing keys is enabled
    if(keyboard_check_pressed(start_button)){//if we press the start button
        allow_interaction = false;//block multiple button presses
        state = "Start_Game";//Start Game
        event_perform(ev_other,ev_user0);
        Create_Screen_Fade(c_black,0,1,.001,"out",id);//color, start, end, speed, direction, object
    }
}

Pan_Camera_To_Location(300,633,false,999);

//SFFC_Intro_Cutscene();
