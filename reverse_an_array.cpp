/**********
 * Reverse an array
 *
 * Input => arr[1,2,3,4]
 * Output => 4 3 2 1 
 *
 * ********/

#include<iostream>
using namespace std;

int main() {
    int n, i;
    int arr[n];
    
    cout << "Enter size of array: " << endl;                // Enter Size of array.    
    cin >> n;
    
    cout << "Enter array elements: " << endl;               // Storing Array Elements.
    for(i = 0; i < n; i++) {
        cin >> arr[i];
    }
    
    cout << "Reversed array is: " << endl;                  // Printing Reverse array.
    for(i = n-1; i >= 0; i--) {                            
        cout << arr[i] << " ";
    }
    return 0;
}
