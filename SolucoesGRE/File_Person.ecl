EXPORT File_Person := MODULE

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

EXPORT Person := DATASET('~class::gre::intro::persons', personRecord, FLAT);

END;