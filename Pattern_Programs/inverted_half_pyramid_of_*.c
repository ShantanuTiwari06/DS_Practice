#include <stdio.h>
int main() {

   int i, j, rows;                          // (i) for row, (j) for column, (rows) for user input.
   
   // User input.
   printf("Enter the number of rows: ");
   scanf("%d", &rows);

   // loop for row.
   for (i = rows; i >= 1; --i) {   
       // loop for column.
      for (j = 1; j <= i; ++j) {
         printf("* ");
      }
      printf("\n");                           // for new line.
   }
   return 0;
}
