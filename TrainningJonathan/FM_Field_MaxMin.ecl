EXPORT FM_Field_MaxMin(file,field) := FUNCTIONMACRO
	r_macro := RECORD
		Min_Value := MIN(GROUP, file.field);
		Max_Value := MAX(GROUP, file.field);
	END;
	RETURN TABLE(file, r_macro);
ENDMACRO;