#WORKUNIT('NAME', 'DESAFIO_TEMPLATE');

IMPORT AppliedEcl.FM_ToUpperCaseDinamic as FM;
IMPORT AppliedEcl;


//FunctionMacro
execution := FM.ToUpperCaseDinamic(AppliedEcl.file_Persons_inline.ds);
//execution;
#EXPAND(execution);

