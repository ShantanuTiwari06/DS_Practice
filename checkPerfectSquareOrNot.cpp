/**
 * Approach 1. :
 *   Step 1 : Take the square root of the number.
 *   Step 2 : Multiply the square root twice
 *   Step 3 : Use boolean equal operator to verify 
 *              if the product of square root is equal to the number given.
 */

#include <iostream>
#include <math.h>
using namespace std;

bool isPerfectSquare(long double x) {

    if (x >= 0) {
        long long sr = sqrt(x);
        return (sr * sr == x);
    }else {
        return false;
    }
}

int main() {
    long long n = 2500;
    if (isPerfectSquare(n))
        cout << "Yes";
    else
        cout << "No";
    return 0;
}


/**
 *  Approach 2. :
 *  Step 1 : Use the floor and ceil function .
 *  Step 2 : If they are equal that implies the number is a perfect square. 
 */

/**
 * 1. The ceil() function in C++ returns the smallest possible integer value 
 *    which is greater than or equal to the given argument.
 * 2. The floor() function in C++ returns the largest possible integer value 
 *    which is less than or equal to the given argument.
 * 
 */

#include <iostream>
#include <math.h>
using namespace std;

void isPerfectSquare(int n) {
    if (ceil((double)sqrt(n)) == floor((double)sqrt(n))) {
        cout << "Yes";
    }else{
        cout << "No";
    }
}

int main() {
    int n = 49;
    isPerfectSquare(n);
    return 0;
}

