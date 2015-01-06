// load the debugging functions
            luaState.RegisterFunction("Debug", this, typeof(Form1).GetMethod("lua_Print"));
            luaState.RegisterFunction("import", this, typeof(Form1).GetMethod("lua_import"));
            luaState.RegisterFunction("try", this, typeof(Form1).GetMethod("lua_try"));
            luaState.RegisterFunction("try_chunk", this, typeof(Form1).GetMethod("lua_try_chunk"));

            // load the program utilities
            luaState.RegisterFunction("program_SetTitle", this, typeof(Form1).GetMethod("lua_program_settitle"));
            luaState.RegisterFunction("program_SetSize", this, typeof(Form1).GetMethod("lua_program_setsize"));
            luaState.RegisterFunction("program_Exit", this, typeof(Form1).GetMethod("lua_program_close"));
            luaState.RegisterFunction("program_Maximize", this, typeof(Form1).GetMethod("lua_program_maximize"));
            luaState.RegisterFunction("program_Minimize", this, typeof(Form1).GetMethod("lua_program_minimize"));
            luaState.RegisterFunction("program_SetIcon", this, typeof(Form1).GetMethod("lua_program_setIcon"));

            // load the bitmap utilities
            luaState.RegisterFunction("bitmap_Register", this, typeof(Form1).GetMethod("lua_bitmap_add"));
            luaState.RegisterFunction("bitmap_Render", this, typeof(Form1).GetMethod("lua_bitmap_render"));
            luaState.RegisterFunction("bitmap_IsVisible", this, typeof(Form1).GetMethod("lua_bitmap_is_hidden"));
            luaState.RegisterFunction("bitmap_Destroy", this, typeof(Form1).GetMethod("lua_bitmap_remove"));
            luaState.RegisterFunction("bitmap_SetPosition", this, typeof(Form1).GetMethod("lua_bitmap_setposition"));
            luaState.RegisterFunction("bitmap_RegisterIfNotFound", this, typeof(Form1).GetMethod("lua_bitmap_add_if_not_found"));
            luaState.RegisterFunction("bitmap_SetParent", this, typeof(Form1).GetMethod("lua_bitmap_setparent"));
            luaState.RegisterFunction("bitmap_SetImage", this, typeof(Form1).GetMethod("lua_bitmap_changeimage"));
            luaState.RegisterFunction("bitmap_GetImage", this, typeof(Form1).GetMethod("lua_bitmap_getimage"));
            luaState.RegisterFunction("bitmap_SetSize", this, typeof(Form1).GetMethod("lua_bitmap_setsize"));
            luaState.RegisterFunction("bitmap_SendBack", this, typeof(Form1).GetMethod("lua_bitmap_back"));
            luaState.RegisterFunction("bitmap_SendFront", this, typeof(Form1).GetMethod("lua_bitmap_front"));

            // load the util utilities
            luaState.RegisterFunction("Util_MouseX", this, typeof(Form1).GetMethod("lua_util_mouseX"));
            luaState.RegisterFunction("Util_MouseY", this, typeof(Form1).GetMethod("lua_util_mouseY"));
            //luaState.RegisterFunction("Util_AddButton", this, typeof(Form1).GetMethod("lua_util_addbutton"));
            luaState.RegisterFunction("Util_SetBackgroundColor", this, typeof(Form1).GetMethod("lua_util_setbackgroundcolor"));
            luaState.RegisterFunction("Util_GetScreenWidth", this, typeof(Form1).GetMethod("lua_util_getscreenwidth"));
            luaState.RegisterFunction("Util_GetScreenHeight", this, typeof(Form1).GetMethod("lua_util_getscreenheight"));
            luaState.RegisterFunction("Util_ClearScreen", this, typeof(Form1).GetMethod("lua_util_clear"));
            luaState.RegisterFunction("Util_CreateColorFromRGB", this, typeof(Form1).GetMethod("lua_util_getcolorfromtable"));

            // load the text utilities
            luaState.RegisterFunction("Text_Register", this, typeof(Form1).GetMethod("lua_text_register"));
            luaState.RegisterFunction("Text_RegisterIfNotFound", this, typeof(Form1).GetMethod("lua_text_register_if_not_found"));
            luaState.RegisterFunction("Text_Render", this, typeof(Form1).GetMethod("lua_text_render"));
            luaState.RegisterFunction("Text_IsVisible", this, typeof(Form1).GetMethod("lua_text_is_hidden"));
            luaState.RegisterFunction("Text_Destroy", this, typeof(Form1).GetMethod("lua_text_remove"));
            luaState.RegisterFunction("Text_SetPosition", this, typeof(Form1).GetMethod("lua_text_setposition"));
            luaState.RegisterFunction("Text_GetText", this, typeof(Form1).GetMethod("lua_text_gettext"));
            luaState.RegisterFunction("Text_SetText", this, typeof(Form1).GetMethod("lua_text_settext"));
            luaState.RegisterFunction("Text_SetFont", this, typeof(Form1).GetMethod("lua_text_setfont"));
            luaState.RegisterFunction("Text_SetParent", this, typeof(Form1).GetMethod("lua_text_setparent"));
            luaState.RegisterFunction("Text_SendBack", this, typeof(Form1).GetMethod("lua_text_back"));
            luaState.RegisterFunction("Text_SendFront", this, typeof(Form1).GetMethod("lua_text_front"));
            luaState.RegisterFunction("Text_SetBackColor", this, typeof(Form1).GetMethod("lua_text_setbackcolor"));

            // load the windows utilities
            luaState.RegisterFunction("Windows_MessageBox", this, typeof(Form1).GetMethod("lua_windows_messagebox"));

            // load the timer utilities
            luaState.RegisterFunction("Timer_Create", this, typeof(Form1).GetMethod("lua_timer_create"));
            luaState.RegisterFunction("Timer_GetTime", this, typeof(Form1).GetMethod("lua_timer_gettime"));
            luaState.RegisterFunction("Timer_Start", this, typeof(Form1).GetMethod("lua_timer_start"));
            luaState.RegisterFunction("Timer_Stop", this, typeof(Form1).GetMethod("lua_timer_stop"));
            luaState.RegisterFunction("Timer_Running", this, typeof(Form1).GetMethod("lua_timer_running"));
            luaState.RegisterFunction("Timer_Done", this, typeof(Form1).GetMethod("lua_timer_isdone"));
            luaState.RegisterFunction("Timer_Repeat", this, typeof(Form1).GetMethod("lua_timer_setinterval"));
            luaState.RegisterFunction("Timer_SetCallback", this, typeof(Form1).GetMethod("lua_timer_setcallback"));

-- Progressbar functions:
Progressbar_Create
Progressbar_Start
Progressbar_Stop
Progressbar_Reset", this, typeof(Form1).GetMethod("lua_progressbar_reset"));
Progressbar_Render", this, typeof(Form1).GetMethod("lua_progressbar_show"));
Progressbar_Add", this, typeof(Form1).GetMethod("lua_progressbar_add"));
Progressbar_Remove", this, typeof(Form1).GetMethod("lua_progressbar_remove"));
Progressbar_MaximumAddition", this, typeof(Form1).GetMethod("lua_progressbar_maxaddition"));
Progressbar_GetRemaining", this, typeof(Form1).GetMethod("lua_progressbar_timeremaining"));
Progressbar_IsStarted", this, typeof(Form1).GetMethod("lua_progressbar_started"));
