/*********
 * 
 * 153 = 1*1*1 + 5*5*5 + 3*3*3 
 *     = 1 + 125 + 27
 *     = 153 
 * 
 * *********/

#include <stdio.h>
int main() {

    int num, originalNumber, remainder, result = 0;

    // User Input.
    printf("Enter a three-digit integer: ");
    scanf("%d", &num);

    originalNumber = num;

    while (originalNumber != 0) {
        // remainder contains the last digit
        remainder = originalNumber % 10;
        result += remainder * remainder * remainder;
        // removing last digit from the orignal number
        originalNumber /= 10;
    }

    if (result == num)
        printf("%d is an Armstrong number.", num);
    else
        printf("%d is not an Armstrong number.", num);
    return 0;
}