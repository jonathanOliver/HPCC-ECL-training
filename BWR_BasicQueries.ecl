IMPORT TrainningJonathan.File_Accounts as FA;
IMPORT TrainningJonathan.File_Persons as FP;

persons  := FP.File;
accounts := FA.File;

countPerssons := COUNT(persons);
countAccounts := COUNT(accounts);

OUTPUT(countPerssons, named('Count_Perssons'));
OUTPUT(countAccounts, named('Count_Accounts'));

OUTPUT(persons, named('Persons'));
OUTPUT(accounts, named('Accounts'));

OUTPUT(persons, {ID,Lastname,Firstname});
OUTPUT(accounts, {ReportDate, HighCredit,Balance});

OUTPUT(persons, {ID, StreetAddress, City, State, ZipCode},named('Address_info'));
OUTPUT(accounts,{AccountNumber, LastActivityDate, Balance},named('Acct_Activity'));
