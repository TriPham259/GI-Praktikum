;----------------Zaehle einlesen----------------
01 INP 01     ;1.Zahl einlesen und an Adresse 1 speichern
02 INP 02     ;2.Zahl einlesen und an Adresse 2 speichern
;---------------Differenz berechnen---------------
03 LDA 01     ; Lade Zahl von Adresse 1 in den Akkumulator
04 SUB 02     ; Subtrahiere vom Akkumulator-Inhalt von Adresse 2
;-------------Wenn Akku-Inhalt >= 0, dann naechste Anweisungen ueberspringen 
05 JGE 08     ; Wenn Akku >= 0, springe ann Programmadr. 8
06 OUT 02     ; Gibt Inhalt von Adresse 2 aus
07 JMP 09     ; Springe an Programmadr. 9
08 OUT 01     ; Gibt Inhalt von Adresse 1 aus
09 HLT 99     ; Programmende