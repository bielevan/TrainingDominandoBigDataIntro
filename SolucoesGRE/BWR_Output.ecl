IMPORT $;

CHOOSEN($.File_Person.Person, 200);

CHOOSEN($.File_Accounts.Account, 200);

OUTPUT('TOTAL PERSON: ' + COUNT($.File_Person.Person) + ', TOTAL ACCOUNT: ' + COUNT($.File_Accounts.Account));

OUTPUT($.File_Person.Person, { id, lastname, firstname });

OUTPUT($.File_Accounts.Account, { reportdate, highcredit, balance }, NAMED('Account'));

OUTPUT($.File_Person.Person, { id, streetaddress, city, state, zipcode }, NAMED('Address_Info'));

OUTPUT($.File_Accounts.Account, { accountnumber, lastactivitydate, balance }, NAMED('Acct_Activity'));