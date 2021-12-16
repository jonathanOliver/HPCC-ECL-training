IMPORT TrainningJonathan.File_Persons as FP;
IMPORT STD;

//TRANSFORM FIELD LAYOUT FOR 
FP.Layout upperString (FP.Layout L ) := TRANSFORM
		
	SELF.FirstName := STD.Str.ToUpperCase(L.FirstName);
	SELF.MiddleName  := STD.Str.ToUpperCase(L.MiddleName);
	SELF.LastName  := STD.Str.ToUpperCase(L.LastName);
	
	SELF := L;
	
END;

Project_DS := PROJECT (FP.File, upperString(LEFT));

//SAVE LOGICAL FILE, WITH NEW DS PROJECT
a := OUTPUT(Project_DS,,'~CLASS::jaso::scheduled', OVERWRITE);

NewPersons := DATASET('~CLASS::jaso::scheduled', FP.Layout, THOR);
b:= BUILD(NewPersons,{LastName,FirstName},{NewPersons},'~CLASS::jaso::NewPersonsKey',OVERWRITE);

EXPORT ProcessPersons := SEQUENTIAL (a,b);

