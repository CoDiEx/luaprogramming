function IsOverHundred(number)
  if (number > 100) then
    return true;
  else
    return false;
  end
end

function GetNil()
  return nil;
end

function SetNil(nilvalue, var)
  return nilvalue = var;
end

function Load()
  local WasOver = IsOverHundred(150);
  local Over = GetNil();
  if (WasOver == true) then
    Over = SetNil(Over, WasOver);
  else
    Over = SetNil(Over, WasOver);
  end
  print(Over);
end

Load(); -- call "Load" function at the same time as the script is loaded
