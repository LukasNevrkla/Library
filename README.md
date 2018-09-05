# Library

Pro první spuštění Net.Core aplikace (Library_Manager)
je zatím potřeba, pro připojení k databázi, v appsettings.json změnit název serveru
na kterém SQL databaze běží a její jméno (V základu nastavena na Library). Pak stačí zapnout WPF aplikaci 
(Library_reader) a načtou se data z databáze podle modelu Book.

V Master je napsáno SQL query pro vytvoření databáze a uložení dat do ní.
