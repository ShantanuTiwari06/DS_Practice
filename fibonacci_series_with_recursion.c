// Fibonacci Series with Recursion.

#include <stdio.h>

int fib(int n)                                             // fibonacci function. 
{
    if(n == 1 || n == 2)
        return(1);
    return( fib( n-1 ) + fib( n-2 ) );
}

void main()                                                // main function.
{
    int i, n;
    printf("Enter the number of terms: ");
    scanf("%d", &n);
    printf("Fibonacci Series: ");

    for (i = 1; i <= n; ++i) 
        printf("%d, ", fib(i) );                           // calling of fibonacci function.
}