EXPORT FM_ToUpperCaseDinamic := MODULE
	EXPORT ToUpperCaseDinamic(rec) := FUNCTIONMACRO
		
		//TEMPLATE	
		#EXPORTXML (struct, RECORDOF(rec));
		#DECLARE(my_code);
		
		inicial_def := 'IMPORT STD;'+ 
										'rec_upperCase := RECORD\n';
													
		#SET(my_code, inicial_def);		
		#FOR(struct)
			#FOR(Field)
				#APPEND(my_code,%'@label'%+' := STD.Str.ToUpperCase('+TRIM(#TEXT(rec),ALL)+'.'+%'@label'%+'); \n');
			#END;
		#END;
		
		final_def := 'END;\n'+
									'my_tbl:= TABLE('+#TEXT(rec)+',rec_upperCase);\n'+
									'output(my_tbl);';
									
		#APPEND(my_code,final_def );
		
		RETURN %'my_code'%;
		
	ENDMACRO;
END;