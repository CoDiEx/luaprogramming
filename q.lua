svar_rigtigt = "125";
while(true) do -- bliv ved indtil sandt
	print("Spørgsmål"); -- spørgsmål, du kan sætte svar muligheder på
	svar = io.read(); -- hvad svarer brugeren?
	if (svar == svar_rigtigt) then -- svarede brugeren korrekt?
		print("Korrekt!");
		break; -- ud af while loopet
	else
		print("forkert");
	end
end
