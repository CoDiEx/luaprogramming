function Game_AddQuestionSequence(question, answers, correct, correct_message, wrong_message, callback_onfail, callback)

	local _QASKED = false; -- to check wether the answer possibilites have already been asked or not
	local _DONE = false;

	while _DONE == false do -- always do this - until told not to
		
		if (_QASKED == false) then -- have we already asked the question?
			
			print(question); -- first we want to ask the question
			
			for i=1, #answers do -- loop through the table to print the not asked questions
				
				if not answers[i].asked then -- means: "if questions[i].asked == false then"
					
					print(answers[i].id ..": " ..answers[i].title); -- print out the possibilites with their ID (the ".." means '+' so print("hello " .."friend") would be "hello friend")
					
				end
				
			end
			
			_QASKED = true; -- so we dont crash the program (may be obsolete my keep it for safety!)
			
		end
		
		-- now we got our question and answer possibilites printed out
		
		local PlayerAnswer = io.read(); -- get user input
		
		if (PlayerAnswer ~= nil) then -- "~=" is a different way of saying NOT
		
			string.lower(PlayerAnswer); -- incase we have any uppercase letters - function is from the string library
		
			if (PlayerAnswer == correct.title or PlayerAnswer == correct.id) then -- the or statement means that IF one of those two are correct then proceed.
				break;
			else
		
				print(wrong_message); -- let the player know the answer was incorrect
		
				for i=1, #answers do
				
					if (PlayerAnswer == answers[i].title or PlayerAnswer == answers[i].id) then -- if answer is question or is the question ID
						
						answers[i].asked = true; -- remove it from the pool of possible answers
						
					end
						
				end
		
				_QASKED = false; -- so we can print out the answer possibilities again
		
				if (callback_onfail == true and callback ~= nil) then -- first we check wether we should call it now or when we answer correctly (if not then) call callback if valid
					callback(); -- if valid and all that we just call it
				end
		
			end
		
		end
		
	end -- repeat until _DONE is true

	print(correct_message);

	if (callback_onfail == false and callback ~= nil) then -- first we check wether the callback should be called on fail (if not then) call callback IF callback is valid
		callback(); -- if valid and all that we just call it
	end

	return;

end

function Game_QuestionOnFail()
	print("Player just lost a star");
	-- TODO: add some sort of penalty
end

-- example of how to use this function
function Main()

	t_when =
	{
	
		{title = "1939", id = "1", asked = false},
		{title = "1864", id = "2", asked = false},
		{title = "1945", id = "3", asked = false},
		{title = "1914", id = "4", asked = false},
	
	}

	t_where =
	{
	
		{title = "Africa", id = "1", asked = false},
		{title = "Germany", id = "2", asked = false},
		{title = "Russia", id = "3", asked = false},
		{title = "Poland", id = "4", asked = false},
		{title = "France", id = "5", asked = false},
	
	}

	Game_AddQuestionSequence("When did world war 2 start?", t_when, t_when[1], "Thats correct!!!", "You're wrong, try again", false, nil);
	Game_AddQuestionSequence("Where did world war 2 start?", t_where, t_where[4], "Yup that's right!", "You couldn't be more wrong!", true, Game_QuestionOnFail);

end

Main(); -- call example function

--[[

	When I ran the program with the lua.exe (DO NOT RUN THIS WITH LUAEDIT!)
	I got this:
	
	When did world war 2 start?
	1: 1939
	2: 1864
	3: 1945
	4: 1914
	
	--I put in: '4' and got:
	You're wrong, try again
	When did world war 2 start?
	1: 1939
	2: 1864
	3: 1945

	-- notice how number 4 vanished
	--This time I put in '1' and got:
	Thats correct!!!
	Where did world war 2 start?
	1: Africa
	2: Germany
	3. Russia
	4. Poland
	5. France
	
	-- I put in the wrong answer to see what would happen and got:
	You couldn't be more wrong!
	Player just lost a star
	Where did world war 2 start?
	4. Poland -- after trying hard I narrowed it down to this one
	-- I put in 4 while I also could have put in "Poland"
	-- I got:
	Yup that's right!

]]
