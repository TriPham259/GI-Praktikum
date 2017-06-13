#include <stdio.h>

int main() {
    double num = 0, sum = 0, avg = 0;
    int count = 0;
	
	// Zahl eingeben und bearbeiten, beenden mit 0
    do {
		// Zahl eingeben
        printf("Geben Sie die %d.Nummer ein (beenden mit 0): ",count + 1);
        scanf("%lf",&num);
		// Anzahl berechnen
        count++;
		//Summe berechen
        sum += num;
    } while (num != 0);        // Abbruchbedingung
	
	// Mittel berechen
    avg = sum / (count - 1);
	
	// Ergebnis ausgeben
    printf("Der Mittelwert ist: %.2lf\n",avg);
    return 0;
}