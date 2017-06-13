#include <stdio.h>
#include <math.h>

int bestimmeAnzahlStelle(int zahl){
	// 0 hat nur 1 Stelle
    if(zahl==0) return 1;
        else {  // Stellen nacheinander von rechts nach links entfernen und zählen
            int ergebnis = 0;
            while (zahl != 0) {
                zahl/=10;
                ergebnis++;
            }
            return ergebnis;
        }
}



int main(){
	// Zahl eingeben und Anzahl der Stelle bestimmen
    int zahl = 0;
    printf("Geben Sie eine Zahl ein: "); 
    scanf("%d",&zahl);
    int n = bestimmeAnzahlStelle(zahl);
	
	// String-array ausgabe[] erstellen
    char* ausgabe[] = {"null", "eins", "zwei", "drei", "vier", "fünf", "sechs" , "sieben", "acht", "neun"};
	
	// Zahl bearbeiten und Ergebnis ausgeben 
    for (int i = n - 1; i >= 0; i--){      // Stelle von links nach rechts "rausnehmen" und bearbeiten:
		/* Um i-te Stelle zuzugreifen:
		 * 		zahl / 10^i => Stellen rechts von i-te Stelle entfernen
		 * 		() % 10     => Stellen links von i-te Stelle entfernen
		 * ausgabe[]: Die Stelle zum Text konvertieren
		 */
        printf ("%s ",ausgabe[(zahl/(int)pow(10,i))%10]);     // i-te Stelle als Text ausgeben
    }
	
    return 0;
}