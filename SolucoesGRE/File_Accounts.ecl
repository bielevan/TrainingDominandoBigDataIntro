EXPORT File_Accounts := MODULE

EXPORT accountRecord := RECORD
    STRING field1;
    STRING field2;
    STRING field3;
    STRING field4;
    STRING field5;
    STRING field6;
    STRING field7;
    STRING field8;
    STRING field9;
    STRING field10;
    STRING field11;
    STRING field12;
    STRING field13;
    STRING field14;
    STRING field15;
    STRING field16;
    STRING field17;
    STRING field18;
    STRING field19;
END;

EXPORT personRecord := RECORD
    UNSIGNED8 ID;
    STRING15 FirstName;
    STRING25 LastName;
    STRING15 MiddleName;
    STRING2 NameSuffix;
    STRING8 FileDate;
    UNSIGNED2 BureauCode;
    STRING1 MaritalStatus;
    STRING1 Gender;
    UNSIGNED1 DependentCount;
    STRING8 BirthDate;
    STRING42 StreetAddress;
    STRING20 City;
    STRING2 State;
    STRING5 ZipCode;
END;

EXPORT Account := DATASET('~class::gre::intro::accounts', accountRecord, CSV);

EXPORT Person := DATASET('~class::gre::intro::persons', personRecord, FLAT);

END;