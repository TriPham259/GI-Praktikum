;---------------2-er Potenz (n) erzeugen und initialisieren------------------
01 LDK 1      ; Initialisierung n=1
02 STA 02     ; Lade n an Adresse 2
 
03 LDK 2      ; Speichere ein Konstant(2)(um 2-er Potenz zu bilden)
04 STA 04     ; an Adresse 4
;---------------Bit einlesen-------------------------------------------------
05 INP 01     ; Bit einlesen und an Adresse 1 speichern
06 LDA 01     ; Lade Bit in den Akku
;------------Wenn Bit < 0, springe zum Programmende--------------------------
07 JLZ 16     ; Falls Bit < 0, springe an Programmadr. 15 (OUT)
;-----------Wenn Bit = 0, addiere n nicht auf Summe und erhoeht n------------
08 JEZ 12     ; Wenn Bit = 0, springe an Programmadr. 12 (n erhoehen)
;-------------Bisherige Summe berechen---------------------------------------
09 LDA 03     ; Lade Ergebnis in den Akku
10 ADD 02     ; n auf bisherige Summe addieren
11 STA 03     ; Ergebnis auf Adresse 3 speichern
;---------------n (2-er Potenz) erhoehen-------------------------------------
12 LDA 02     ; Lade n in den Akku
13 MUL 04     ; n *= 2
14 STA 02     ; Speichere an Adresse 2
;----------------Neues Bit einlesen------------------------------------------
15 JMP 05     
;-----------------Ergebnis ausgeben und Programmende-------------------------
16 OUT 03     ; Gib Inhalt von Adresse 3 (Ergebnis) aus

17 HLT 99     ; Programmende