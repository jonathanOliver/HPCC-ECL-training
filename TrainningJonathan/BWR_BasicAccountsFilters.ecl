//EXPORT BWR_BasicPersonsFilters := 'todo';

IMPORT TrainningJonathan.File_Accounts as FA;
accounts := FA.File;


Accounts(Balance >= 100000);
COUNT(Accounts(Balance >= 100000)); //255131

Accounts(Balance >= 100000, Late30Day >0 OR Late60Day >0 OR Late90Day >0);
COUNT(Accounts(Balance >= 100000,(Late30Day>0 OR Late60Day>0 OR Late90Day>0)));

Accounts(OpenDate[..4] >= '2000');
COUNT(Accounts(OpenDate[..4] >= '2000'));

Accounts(TermType = '');
COUNT(Accounts(TermType = ''));
