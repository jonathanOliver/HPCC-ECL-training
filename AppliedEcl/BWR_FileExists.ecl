IMPORT STD, $;

name_event := 'NewFileSprayed';
file_path :=  '~CLASS::jaso::persons';


//DELETE FILE IF IT EXISTS
IF (STD.File.FileExists(file_path),STD.File.DeleteLogicalFile(file_path));

//Execution EVENT
STD.File.MonitorLogicalFileName(name_event,file_path);


$.ProcessPersons : WHEN(EVENT(name_event,'*'));