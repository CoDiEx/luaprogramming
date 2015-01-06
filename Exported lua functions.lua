-- useful functions:
Debug(string output)
import(string file)
try(string function)
try_chunk(string chunk);

-- Program functions:
program_SetTitle(string title);
program_SetSize(int width, int height);
program_Exit(unkown)
program_Maximize(nil);
program_Minimize(nil);
program_SetIcon(string icon);

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

-- Timer functions:
Timer_Create
Timer_GetTime
Timer_Start
Timer_Stop
Timer_Running
Timer_Done
Timer_Repeat
Timer_SetCallback

-- Progressbar functions:
Progressbar_Create
Progressbar_Start
Progressbar_Stop
Progressbar_Reset
Progressbar_Render
Progressbar_Add
Progressbar_Remove
Progressbar_MaximumAddition
Progressbar_GetRemaining
Progressbar_IsStarted
