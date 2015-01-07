--[[

  functions are defines as:
  [return type] [Functionname]([type] [variablename]) [Possible documentation]

  types:
  bool = boolean (true/false)
  int = integer = any number
  double = any number (with decimals)
  string = any text
  Lua[Type] = any lua class defined in c#

  return types:
  void = nothing is returned
  int = returns an integer (number)
  string = returns a string (text)
  lua[Type] = any lua type class defined in c#

]]
-- useful functions:
void  Debug(string output)
void  import(string file)
bool  try(string function)
bool  try_chunk(string chunk)
void  Delay(double sleeptime)
void  Error(string errormessage)

-- Program functions:
void  program_SetTitle(string title)
void  program_SetSize(int width, int height)
void  program_Exit()
void  program_Maximize()
void  program_Minimize()
void  program_SetIcon(string icon)

-- Bitmap functions:
void    bitmap_Register(string ID, int width, int height, int x, int y, string imagePath)
bool    bitmap_RegisterIfNotFound(string ID, int width, int height, int x, int y, string imagePath) -- it is recommended to use this over the first function!
void    bitmap_Render(string ID, bool render)
bool    bitmap_IsVisible(string ID)
void    bitmap_Destroy(string ID)
void    bitmap_SetPosition(string ID, int x, int y)
void    bitmap_SetParent(string ID, string parentID)
void    bitmap_SetImage(string ID, string imagePath)
string  bitmap_GetImage(string ID)
void    bitmap_SetSize(string ID, int width, int height)
void    bitmap_SendBack(string ID)
void    bitmap_SendFront(string ID)

-- Util functions:
int     Util_MouseX();
int     Util_MouseY();
void    Util_SetBackgroundColor(LuaColor color)
int     Util_GetScreenWidth()
int     Util_GetScreenHeight()
void    Util_ClearScreen()
Color   Util_CreateColorFromRGB(int r, int g, int b)
void    Util_SetBackground(string path)

-- Text functions:
void    Text_Register(string ID, string text, int width, int height, int x, int y)
bool    Text_RegisterIfNotFound(string ID, string text, int width, int height, int x, int y) -- it is recommended to use this over the first function!
void    Text_Render(string ID, bool render)
bool    Text_IsVisible(string ID)
void    Text_Destroy(string ID)
void    Text_SetPosition(string ID, int x, int y)
string  Text_GetText(string ID)
void    Text_SetText(string ID, string text)
void    Text_SetFont(string ID, string fontname, LuaColor color, int fontSize)
void    Text_SetParent(string ID, string parentID)
void    Text_SendBack(string ID)
void    Text_SendFront(string ID)
void    Text_SetBackColor(string ID, LuaColor color)

-- Windows core functions:
void  Windows_MessageBox(string context, string title, int buttontype, string callback)

-- Timer functions:
LuaTimer  Timer_Create(int time)
int       Timer_GetTime(LuaTimer timer)
void      Timer_Start(LuaTimer timer)
void      Timer_Stop(LuaTimer timer)
bool      Timer_Running(LuaTimer timer)
bool      Timer_Done(LuaTimer timer)
void      Timer_Repeat(LuaTimer timer, bool enabled)
void      Timer_SetCallback(LuaTimer timer, string function)

-- Progressbar functions:
LuaProgressBar  Progressbar_Create(int x, int y, int width, int height, int delay, string function)
void            Progressbar_Start(LuaProgressBar pb)
void            Progressbar_Stop(LuaProgressBar pb)
void            Progressbar_Reset(LuaProgressBar pb)
void            Progressbar_Render(LuaProgressBar pb, bool render)
void            Progressbar_Add(LuaProgressBar pb, int addition)
void            Progressbar_Remove(LuaProgressBar pb, int subtraction)
void            Progressbar_MaximumAddition(LuaProgressBar pb, int maxAdd)
int             Progressbar_GetRemaining(LuaProgressBar pb)
bool            Progressbar_IsStarted(LuaProgressBar pb)

-- Button functions:
LuaButton   Button_Create(string text, int width, int height, int x, int y, string callback)
void        Button_SetText(LuaButton b)
string      Button_GetText(LuaButton b)
void        Button_SetImage(LuaButton b, string path)

-- 2D Texture functions:
LuaTexture  Texture_Create(string path)
void        Texture_GenerateTiles(LuaTexture tex, int width, int height)
LuaTexture  Texture_GetTileAt(LuaTexture tex, int index)
bool        Texture_HasTileMap(LuaTexture tex)



-- All these functions are available in v0.3 of CTDLUA
