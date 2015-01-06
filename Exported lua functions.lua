-- useful functions:
Debug(string output)
import(string file)
try(string function)
try_chunk(string chunk)

-- Program functions:
program_SetTitle(string title)
program_SetSize(int width, int height)
program_Exit()
program_Maximize()
program_Minimize()
program_SetIcon(string icon)

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

-- Util functions:
Util_MouseX();
Util_MouseY();
Util_SetBackgroundColor(LuaColor color);
Util_GetScreenWidth()
Util_GetScreenHeight()
Util_ClearScreen()
Util_CreateColorFromRGB(int r, int g, int b)

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

-- Windows core functions:
Windows_MessageBox(string context, string title, int buttontype, string callback);

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
