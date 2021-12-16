
EXPORT file_Persons_inline := MODULE
	EXPORT layout := RECORD
		STRING First_name;
		STRING Middle_name;
		STRING Last_name;
	END;
	
	EXPORT ds := DATASET([{'Alysson','Rogerio','Oliveira'},
												{'Anny','Caroliny','Marques'},
												{'Gustavo','Luiz','de Oliveira'},
												{'Adriano','dos Santos','Lucas'},
												{'Jonathan','Aparecido','de Souza'}], layout);
END;








