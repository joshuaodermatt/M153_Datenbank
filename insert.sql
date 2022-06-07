use BierLexikon;

#Bierliebhaber
insert into BierLiebhaber (Name, Vorname, Geburtsdatum) values ('Hans', 'Meier', '1970-04-14');
insert into BierLiebhaber (Name, Vorname, Geburtsdatum) values ('Peter', 'Mueller', '1970-04-14');
insert into BierLiebhaber (Name, Vorname, Geburtsdatum) values ('Max', 'Siegrist', '1970-04-14');
insert into BierLiebhaber (Name, Vorname, Geburtsdatum) values ('Fridolin', 'Bucher', '1970-04-14');
insert into BierLiebhaber (Name, Vorname, Geburtsdatum) values ('Maximilian', 'Buchmann', '1970-04-14');
insert into BierLiebhaber (Name, Vorname, Geburtsdatum) values ('Herbert', 'Bachmann', '1970-04-14');

#Biertyp
insert into BierTyp(Name) values ('Alkoholfrei');
insert into BierTyp(Name) values ('Lagerbier');
insert into BierTyp(Name) values ('Spezialbier');
insert into BierTyp(Name) values ('Starkbier');
insert into BierTyp(Name) values ('Dunkelbier');


#Marken
insert into Marken(Name, Gruendungsjahr, Standort) values ('Heineken', 1864, 'Amsterdam');
insert into Marken(Name, Gruendungsjahr, Standort) values ('Appenzeller Bier', 1810, 'Apenzell');
insert into Marken(Name, Gruendungsjahr, Standort) values ('Eichhof', 1922, 'Luzern');
insert into Marken(Name, Gruendungsjahr, Standort) values ('Corona', 1925, 'Mexiko-Stadt');
insert into Marken(Name, Gruendungsjahr, Standort) values ('Guinness', 1759, 'Dublin');


#Biersorten
insert into Biersorten (Name, Fk_BierTypId, Fk_MarkenId, Veroefentlichungsjahr, Alkoholfrei, Alkoholgehalt) values ('Heineken Lager', 2, 1, 1873, 0, 5.0);
insert into Biersorten (Name, Fk_BierTypId, Fk_MarkenId, Veroefentlichungsjahr, Alkoholfrei, Alkoholgehalt) values ('0.0', 1, 3, 2019, 1, 0.0);
insert into Biersorten (Name, Fk_BierTypId, Fk_MarkenId, Veroefentlichungsjahr, Alkoholfrei, Alkoholgehalt) values ('Eichhof Lager', 2, 3, 1930, 0, 4.9);
insert into Biersorten (Name, Fk_BierTypId, Fk_MarkenId, Veroefentlichungsjahr, Alkoholfrei, Alkoholgehalt) values ('Nackte Welle', 3, 3, 2015, 1, 4.8);
insert into Biersorten (Name, Fk_BierTypId, Fk_MarkenId, Veroefentlichungsjahr, Alkoholfrei, Alkoholgehalt) values ('Corona Extra', 3, 4, 1925, 0, 4.5);
insert into Biersorten (Name, Fk_BierTypId, Fk_MarkenId, Veroefentlichungsjahr, Alkoholfrei, Alkoholgehalt) values ('Guinness Foreign Extra Stout', 4, 5, 1801, 0, 7.5);
insert into Biersorten (Name, Fk_BierTypId, Fk_MarkenId, Veroefentlichungsjahr, Alkoholfrei, Alkoholgehalt) values ('Guinness Draught', 5, 5, 1760, 0, 4.2);

#BierFavorit
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (1, 1);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (2, 1);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (3, 1);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (4, 3);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (5, 4);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (6, 5);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (1, 4);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (2, 6);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (3, 3);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (4, 5);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (5, 2);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (6, 2);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (4, 4);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (5, 6);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (6, 1);
insert into BierFavorit (BierLiebhaberId, BierstortenId) values (6, 4);

