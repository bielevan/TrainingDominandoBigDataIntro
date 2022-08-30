IMPORT $, DataPatterns;

// DataPatterns.Profile($.File_Accounts.Account);
// DataPatterns.BestRecordStructure($.File_Accounts.Account);
// DataPatterns.Benford($.File_Accounts.Account, '<field>');

// IsFloridian que testará se uma pessoa mora na Flórida.
IsFloridian := $.File_Person.Person.state = 'FL';

// IsMale que testará se o sexo de uma pessoa está marcado como masculino ( 'M').
IsMale := $.File_Person.Person.gender = 'M';

// IsBorn80 que testará se uma pessoa nasceu após o ano de 1979
IsBorn80 := $.File_Person.Person.birthdate[..4] > '1979';

// IsYoungMaleFloridian para resultar em TRUE para qualquer homem que viva na Flórida e tenha nascido após o ano de 1979
EXPORT IsYoungMaleFloridian := isFloridian AND isMale AND isBorn80;