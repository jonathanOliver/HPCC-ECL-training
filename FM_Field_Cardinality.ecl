EXPORT FM_Field_Cardinality(file,field) := FUNCTIONMACRO
	t_macro := TABLE(file,{file.field});
	dt_macro := DISTRIBUTE(t_macro,HASH32(field));
	sdt_macro := SORT(dt_macro,field,LOCAL);
	dsdt_macro := DEDUP(sdt_macro,field,LOCAL);
	RETURN COUNT(dsdt_macro);
ENDMACRO;