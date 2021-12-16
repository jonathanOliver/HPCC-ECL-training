
IMPORT TrainningJonathan.File_Persons as FP;
Person := FP.File;
EXPORT UID_Persons := MODULE
	EXPORT recPerson := RECORD
		UNSIGNED rec_id;
		FP.Layout;
	END;


	recPerson FileRecPerson(FP.Layout Le, rec_id):= TRANSFORM
		SELF.rec_id := rec_id;
		SELF := Le;
	END;


	EXPORT File_uid_person := PROJECT(Person, FileRecPerson(LEFT,COUNTER));
END;
//OUTPUT(UID_Person);