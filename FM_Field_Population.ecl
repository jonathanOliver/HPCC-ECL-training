
EXPORT FM_Field_Population(file,field,compare) := FUNCTIONMACRO
  
	
	mCompare:= COUNT(file(field=compare));
	mFile := COUNT(file);
	RETURN DATASET([{'Total',mFile},
									{'Records = compare',mCompare},
									{'Population Pct',(INTEGER)(((mFile-mCompare)/mFile)*100.0)}],
									{STRING35 valuetype,INTEGER val});
ENDMACRO;