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
