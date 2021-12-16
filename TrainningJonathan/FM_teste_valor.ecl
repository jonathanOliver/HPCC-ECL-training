EXPORT FM_teste_valor(MyFile, MyField) := FUNCTIONMACRO
	IMPORT TrainningJonathan As X;
	r := RECORD
		MyFile.MyField;
		INTEGER cnt := COUNT(GROUP);
	END;
	//EXPORT ValueCount := TABLE(X.File_Persons.File,r,Gender);

	 ValueCount := TABLE(MyFile,r,MyField);
	 RETURN ValueCount;
ENDMACRO;