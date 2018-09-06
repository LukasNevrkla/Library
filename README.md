# Library

Pro první spuštění Net.Core aplikace (Library_Manager)
je zatím potřeba, pro připojení k databázi, v appsettings.json změnit název serveru
na kterém SQL databaze běží a její jméno (V základu nastavena na Library). 
Poté stačí spustit: Library_Manager\Library_Manager\bin\Release\netcoreapp2.1\win10-x64\publish\Library_Manager.exe
a na https://localhost:5001/api/Books bude vidět databáze.

Pro spuštění WPF aplikace (Library_reader) stačí zapnout F:\Programming\GitHub\Library\Libraries_reader\Libraries_reader\bin\Debug\Libraries_reader.exe 
(V URL, které je uprostřed nahoře je potřeba nastavit aktuální URL na kterém net.core beží... 
https://localhost:5001/api/Books stisknout enter pro uložení a tlačítko "načíst znovu".)

V Master je napsáno SQL query pro vytvoření databáze a uložení dat do ní.
