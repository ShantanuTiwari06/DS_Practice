#include <stdio.h>
int main() {

    int i, j, rows;
    char alphabet = 'A';

    printf("Enter an uppercase character you want to print in the last row: ");
    scanf("%d", &rows);

    for (i = 1; i <= (rows - 'A' + 1); ++i) {
      
      for (j = 1; j <= i; ++j) {
         printf("%c ", alphabet);
        }
        ++alphabet;
        printf("\n");
    }
   return 0;
}