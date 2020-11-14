/**********
 * 
 *  Half pyramid using alphabet.
 * 
 *  A
 *  B B
 *  C C C
 *  D D D D
 *  E E E E E
 * 
 * **********/

#include <stdio.h>
int main() {

    int i, j, rows;
    char alphabet = 'A';

    // Taking value from user.
    printf("Enter number of rows you want to print : ");
    scanf("%d", &rows);

    // loop for rows.
    for (i = 1; i <= rows; ++i) {
      
        // loop for columns.
      for (j = 1; j <= i; ++j) {
         printf("%c ", alphabet);
        }
        ++alphabet;                 // increament in alphabet.
        printf("\n");               // for new line.
    }
   return 0;
}