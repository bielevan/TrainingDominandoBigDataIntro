IMPORT $;

CHOOSEN($.File_Person.Person(state='FL'), 200);

COUNT($.File_Person.Person(state='FL'));

COUNT($.File_Person.Person(state='FL', city='MIAMI'));

COUNT($.File_Person.Person(state='FL', city='MIAMI', zipcode='33102'));

OUTPUT($.File_Person.Person(firstname >= 'B', firstname < 'C'));

OUTPUT($.File_Person.Person(filedate[..4] > '2000'));