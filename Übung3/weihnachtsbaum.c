#include <stdio.h>

int main() {
	// Hoehe des Baums eingeben
	int hoehe = 0;
	printf("Geben Sie die Anzahl der Zeilen ein:");
	scanf("%d",&hoehe);
	
	// Baum zeichnen
	int zeile = 0,   // aktuele Zeile
		punkt = 0,   // Anzahl der Punkte in der Zeile
		stern = 0 ;  // Anzahl der Sterne in Zeile
		
	for(zeile = 0; zeile < hoehe; zeile++){      // für jede Zeile:
		for(punkt = 0; punkt < hoehe - 1 - zeile; punkt++){    // (hoehe - 1 - zeile) mal "." zeichnen  
			printf (".");
		}
		for(stern = 0; stern < 2*zeile + 1; stern++){          // (2*zeile + 1) mal "*" zeichen
			printf("*");
		}
		for(punkt = 0; punkt < hoehe - 1 - zeile; punkt++){    // (hoehe - 1 - zeile) mal "." zeichnen
			printf (".");
		}
		printf("\n");                                          // Zeileumbruch
	}
	
	return 0;
}