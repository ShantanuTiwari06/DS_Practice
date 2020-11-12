/**********
*
* Program to reverse all elemets inside the array.
* like : a[12,13,14] => 21,31,41
*
***********/

#include <iostream> 
using namespace std; 
  
// Function to return the reverse of n.
int reversDigits(int num) { 
    int rev_num = 0; 
    while (num > 0) { 
        rev_num = rev_num * 10 + num % 10; 
        num = num / 10; 
    } 
    return rev_num; 
} 

int main() {
    int arr[7];

    //  store input from user to array
    cout << "Enter 2 numbers: " << endl;
    for (int i = 0; i < 2; ++i) {
        cin >> arr[i];
    }

    //  print array elements
    cout << "The numbers are: ";
    for (int i = 0; i < 2; ++i) {
        cout << reversDigits(arr[i]) << "  ";
    }
    
}