IMPORT $;

COUNT($.File_Accounts.Account(Balance >= 100000)); 

// Filtre e conte todas as contas cujo saldo seja maior ou igual a 100000 e possua qualquer sinalizador de atraso (30, 60 ou 90 dias). A contagem esperada é 20684
late := $.File_Accounts.Account.late30day > 0 OR
        $.File_Accounts.Account.late60day > 0 OR
        $.File_Accounts.Account.late90day > 0;

COUNT($.File_Accounts.Account(balance >= 100000, late));

// Filtre e conte todas as contas que foram abertas após o ano de 1999. A contagem esperada é 756676.
COUNT($.File_Accounts.Account(opendate[..4] > '1999')); 

// Filtre e conte todas as contas que não possuem um tipo de termo designado. A contagem esperada é 4288443.
COUNT($.File_Accounts.Account(termtype = ''));