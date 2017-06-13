;------------------Anzahl der Nummer (n) erzeugen und initialisieren----------
01 LDK 0        ; Initialisierung n = 0
02 STA 02       ; Lade n an Adresse 2

03 LDK 1        ; Speichere ein Konstant (1) (um n zu erhoehen)
04 STA 04       ; an Addresse 4
;---------------------Zahl einlesen----------------------------
05 INP 01       ; Zahl einlesen und an Adresse 1 speichern
06 LDA 01       ; Lade Zahl in den Akku
07 JEZ 14       ; wenn Zahl = 0, springe an Programm. 14 (faengt an zu dividieren)
;----------------Zahl auf bisherige Summe aufaddieren--------------------
08 ADD 03       ; Addiere auf Akku den Inhalt von Adresse 3
09 STA 03       ; Speichere Akku an Adresse 3
;------------------Anzahl der Nummer (n) erhoehen-----------------------
10 LDA 02       ; Lade jetzige n in den Akku
11 ADD 04       ; n += 1
12 STA 02       ; Speichere n an Adresse 2
;--------------------Neue Zahl einlesen-----------------------------
13 LMP 05
;-----------------------Summe durch n dividieren-----------------------
14 LDA 03       ; Lade Summe von Adresse 3 in den Akku
15 DIV 02       ; Summe durch n (in Adresse 2) dividieren
16 STA 03       ; Speichere Ergebnis an Adresse 3
;-----------------Ergebnis ausgeben und Programmende-------------
17 OUT 03       ; Gib Inhalt von Adresse 3 (Ergebnis) aus

18 HLT 99       ; Programmende