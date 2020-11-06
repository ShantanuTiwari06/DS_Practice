// Program to reverse a sting without strrev().

#include <stdio.h>

int main()
{
    char s[50], ch;             // ch for swapping & s[50] to store string.
    int l,i;                    // l for length & i for loop.
    
    printf("Enter String ");
    gets(s);                     
    
    for(l=0;s[l];l++);          // Find the length of string.
    
    for(i=0;i<l/2;i++) {        // Loop & Logic for swapping.
        ch = s[i];
        s[i] = s[l-1-i];
        s[l-1-i] = ch;
    }
    printf("Reverse is %s:",s);    // Print the output i.e.; Reverse String.
}
