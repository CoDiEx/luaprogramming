-- first we declare a table
-- table name = t_inventory
-- slot_item[x] represents any type of item you can have have
t_inventory = 
{

	slot_item1 = "empty", -- remember to add the commas!
	slot_item2 = "empty",
	slot_item3 = "empty",
	slot_item4 = "empty",
	slot_item5 = "empty",
	slot_item6 = "empty",

}

local iCounter = 1;

-- the smart thing with lua is you dont have to give all parameters
-- so this function can be called like: Inventory_Add("Shovel"); or Inventory_Add("Shovel", 1);
function Inventory_Add(item, index)

	-- first we check wether or not index is a value and doesnt equal NIL
	-- if index is NIL then set the index to 1 (0 would be nil)
	if (index == nil) then
		index = iCounter;
		if iCounter > 6 then
			iCounter = iCounter + 1; -- add 1 to the index
		else -- whoops its greater than 6, let's reset it
			iCounter = 1;
		end
	end

	t_inventory[index] = item; -- set value
	-- an example could be:
	--[[
		index = 1
		t_inventory[index] would then equal slot_item1 it would therefore equal "empty"
	]]

end

function Inventory_Get(index)

	-- do the index check - although this time we just send back 1 if it equals nil
	if (index == nil) then
		index = 1;
	end

	return t_inventory[index];
	
	--[[
	
		just as explained in the previous function
		index = 1
		t_inventory[index] would then equal slot_item1 it would therefore equal "empty"
		which then means we send back the string "empty"
	
	]]

end

-- so we forexample can have one more slot_item (like slot_item7)
-- to have this working we need to have 'k' as a number
function Inventory_AddSlotItem(k,v)

	t_inventory[k] = v;

end

-- we dont really remove it we just set it to nil or "empty"
function Inventory_Remove(index, settonil)

	-- do the check - this time we just do nothing it the index is invalid
	if (index == nil) then
		return; -- we return nothing and end the function here
	else -- if it is something else
		
		if (settonil == true) then -- set to nil value
			t_inventory[index] = nil;
		elseif (settonil == false) then -- set to the string "empty" instead
			t_inventory[index] = "empty";
		else -- if the settonil is something else like a string we dont want to check
			t_inventory[index] = "empty";
		end
		
	end

end

function Inventory_Reset(counter)

	t_inventory = -- simple we just redeclare the table
	{ 
		slot_item1 = "empty",
		slot_item2 = "empty",
		slot_item3 = "empty",
		slot_item4 = "empty",
		slot_item5 = "empty",
		slot_item6 = "empty",
		
	};

	if (counter) then -- if counter is true
		iCounter = 1;
	end

end

local t_Types = -- possible item types
{

	"weapon",
	"potion",
	"food",

}

-- I want some predefined items that aren't just a string
item_rock =
{

	type = t_Types[1], -- this is a weapon
	name = "rock",
	damage = 5,

}

item_shovel = 
{

	type = t_Types[1], -- this is a weapon
	name = "shovel",
	damage = 5,

}

item_fish = 
{

	type = t_Types[3], -- this is a piece of food
	name = "fish",

}

function Main()

	-- first we add some new items to our inventory
	Inventory_Add(item_rock, 1);
	Inventory_Add(item_rock, 2);
	Inventory_Add(item_shovel, 3);

	local player_shovel = Inventory_Get(3); -- I want the shovel

	if (player_shovel == item_shovel) then
		
		print("Player did have a shovel!");
		print("Upgrading player with more slot space in inventory");
		
		Inventory_AddSlotItem("slot_item7", "empty"); -- this one may be obsolete!
		Inventory_Add(item_fish, 7);
		
		if (Inventory_Get(7) == item_fish) then
			print("Player did have a fish in inventory!");
		else
			print("player did not have a fish in inventory!");
		end
		
	else
	
		print("Player did not have any shovels!");
	
	end

end

Main(); -- call main

--[[

	final output:

	Player did have a shovel!
	Upgrading player with more slot space in inventory
	Player did have a fish in inventory!

]]
