-- useful functions:
Debug(string output)
import(string file)
try(string function)
try_chunk(string chunk)
Delay(double sleeptime)
Error(string errormessage)

-- Program functions:
program_SetTitle(string title)
program_SetSize(int width, int height)
program_Exit()
program_Maximize()
program_Minimize()
program_SetIcon(string icon)

-- Bitmap functions:
bitmap_Register(string ID, int width, int height, int x, int y, string imagePath)
bitmap_RegisterIfNotFound(string ID, int width, int height, int x, int y, string imagePath) -- it is recommended to use this over the first function!
bitmap_Render(string ID, bool render)
bitmap_IsVisible(string ID)
bitmap_Destroy(string ID)
bitmap_SetPosition(string ID, int x, int y)
bitmap_SetParent(string ID, string parentID)
bitmap_SetImage(string ID, string imagePath)
bitmap_GetImage(string ID)
bitmap_SetSize(string ID, int width, int height)
bitmap_SendBack(string ID)
bitmap_SendFront(string ID)

-- Util functions:
Util_MouseX();
Util_MouseY();
Util_SetBackgroundColor(LuaColor color)
Util_GetScreenWidth()
Util_GetScreenHeight()
Util_ClearScreen()
Util_CreateColorFromRGB(int r, int g, int b)
Util_SetBackground(string path)

-- Text functions:
Text_Register(string ID, string text, int width, int height, int x, int y)
Text_RegisterIfNotFound(string ID, string text, int width, int height, int x, int y) -- it is recommended to use this over the first function!
Text_Render(string ID, bool render)
Text_IsVisible(string ID)
Text_Destroy(string ID)
Text_SetPosition(string ID, int x, int y)
Text_GetText(string ID)
Text_SetText(string ID, string text)
Text_SetFont(string ID, string fontname, LuaColor color, int fontSize)
Text_SetParent(string ID, string parentID)
Text_SendBack(string ID)
Text_SendFront(string ID)
Text_SetBackColor(string ID, LuaColor color)

-- Windows core functions:
Windows_MessageBox(string context, string title, int buttontype, string callback)

-- Timer functions:
Timer_Create(int time)
Timer_GetTime(LuaTimer timer)
Timer_Start(LuaTimer timer)
Timer_Stop(LuaTimer timer)
Timer_Running(LuaTimer timer)
Timer_Done(LuaTimer timer)
Timer_Repeat(LuaTimer timer, bool enabled)
Timer_SetCallback(LuaTimer timer, string function)

-- Progressbar functions:
Progressbar_Create(int x, int y, int width, int height, int delay, string function)
Progressbar_Start(LuaProgressBar pb)
Progressbar_Stop(LuaProgressBar pb)
Progressbar_Reset(LuaProgressBar pb)
Progressbar_Render(LuaProgressBar pb, bool render)
Progressbar_Add(LuaProgressBar pb, int addition)
Progressbar_Remove(LuaProgressBar pb, int subtraction)
Progressbar_MaximumAddition(LuaProgressBar pb, int maxAdd)
Progressbar_GetRemaining(LuaProgressBar pb)
Progressbar_IsStarted(LuaProgressBar pb)
