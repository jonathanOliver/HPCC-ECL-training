//EXPORT BWR_BasicPersonsFilters := 'todo';

IMPORT TrainningJonathan.File_Persons as FP;
persons  := FP.File;


OUTPUT(persons(State = 'FL'), NAMED('Persons_Florida'));

Floridian := COUNT(persons(State = 'FL'));
OUTPUT(Floridian, NAMED('Cc_Floridian'));

OUTPUT(persons(State = 'FL' AND City = 'MIAMI'), NAMED('Persons_Florida_and_Miami'));
CountFlMi := COUNT(persons(State = 'FL' AND City = 'MIAMI'));
OUTPUT(CountFlMi,  NAMED('cc_Florida_and_Miami'));

OUTPUT(persons(State = 'FL' AND City = 'MIAMI' AND ZipCode = '31193'), NAMED('cc1_Florida_and_Miami'));
CountZipCode := COUNT(persons(State = 'FL' AND City = 'MIAMI' AND ZipCode = '31193'));
OUTPUT(CountZipCode,  NAMED('Cc_ZipCode_Florida_and_Miami'));


OUTPUT(persons(Firstname >= 'B', Firstname < 'C'));
countInicals := COUNT(persons(Firstname >= 'B', Firstname < 'C'));
OUTPUT(countInicals,  NAMED('countInicals'));


OUTPUT(perssons(FileDate[..4]> '2000'));
CountFileDate:= COUNT(perssons(FileDate[..4]> '2000'));
//output(persons, {City});