IMPORT $;

pecRecord := RECORD
    UNSIGNED8 recid; 
    $.File_Person.personRecord;
END;

IMPORT STD;

pecRecord Transf($.File_Person.personRecord Le, UNSIGNED cnt) := TRANSFORM
  SELF.recid := cnt;
  SELF := Le;
END;

pecRecord Transf2($.File_Person.personRecord Le, UNSIGNED cnt) := TRANSFORM
  SELF.recid := cnt;
  SELF.FirstName := STD.Str.ToUpperCase(Le.FirstName);
  SELF.LastName := STD.Str.ToLowerCase(Le.LastName);
  SELF := Le;
END;

EXPORT BWR_Exercicio := PROJECT($.File_Person.Person, MyTransf(LEFT, COUNTER)):PERSIST('~class::gre::persist::uid_persons');