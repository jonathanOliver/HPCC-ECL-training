IMPORT TrainningJonathan.UID_Persons as UP;
IMPORT STD;

lPerson := UP.recPerson;

EXPORT STD_Persons := MODULE
  EXPORT Layout := RECORD
		UP.File_uid_person.rec_id;
		UP.File_uid_person.ID;
		STRING15 FirstName := STD.Str.ToUpperCase(UP.File_uid_person.FirstName);
		STRING30 LastName  := STD.Str.ToUpperCase(UP.File_uid_person.LastName);
		STRING1 MiddleName := STD.Str.ToUpperCase(UP.File_uid_person.MiddleName); 
		STRING2 NameSuffix := STD.Str.ToUpperCase(UP.File_uid_person.NameSuffix);
		UNSIGNED4 FileDate := (UNSIGNED4)UP.File_uid_person.FileDate;
		UP.File_uid_person.BureauCode;
		UP.File_uid_person.Gender;
		UNSIGNED4 BirthDate := (UNSIGNED4)UP.File_uid_person.BirthDate;
		UP.File_uid_person.StreetAddress;
		UP.File_uid_person.City;
		UP.File_uid_person.State;
		UNSIGNED3 ZipCode := (UNSIGNED3)UP.File_uid_person.ZipCode;
	END;
	
	
  EXPORT File := TABLE(UP.File_uid_person, Layout);
END;