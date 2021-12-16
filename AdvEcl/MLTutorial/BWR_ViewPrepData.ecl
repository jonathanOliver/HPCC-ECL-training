IMPORT $;
OUTPUT($.Prep01.myDataE,NAMED('CleanProperty'));
OUTPUT($.Prep01.myTrainData,NAMED('TrainData'));
OUTPUT($.Prep01.myTestData,NAMED('TestData'));
OUTPUT($.File_Property.File,,'~Property::BMF::Test',OVERWRITE);
