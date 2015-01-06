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
Util_SetBackgroundColor(LuaColor color);
Util_GetScreenWidth()
Util_GetScreenHeight()
Util_ClearScreen()
Util_CreateColorFromRGB(int r, int g, int b)

-- Text functions:
Text_Register()
Text_RegisterIfNotFound() -- it is recommended to use this over the first function!
Text_Render()
Text_IsVisible()
Text_Destroy()
Text_SetPosition()
Text_GetText()
Text_SetText()
Text_SetFont()
Text_SetParent()
Text_SendBack()
Text_SendFront()
Text_SetBackColor()

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
