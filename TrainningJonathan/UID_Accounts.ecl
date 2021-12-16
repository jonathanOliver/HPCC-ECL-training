
IMPORT TrainningJonathan.File_Accounts as FA;
Accounts := FA.File;
EXPORT UID_Accounts := MODULE
	recAccount := RECORD
		UNSIGNED rec_id;
		FA.Layout;
	END;


	recAccount FileRecAccount(FA.Layout Le, rec_id):= TRANSFORM
		SELF.rec_id := rec_id;
		SELF := Le;
	END;


	EXPORT File_uid_account := PROJECT(Accounts, FileRecAccount(LEFT,COUNTER));
END;
//OUTPUT(UID_Person);