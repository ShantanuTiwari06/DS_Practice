
#include <iostream>
#include <limits.h>

using namespace std;

void find2LargestNo(int arr[], int arr_size) {
    int i;
    int f , s = INT_MIN;

    if (arr_size < 2) {
        cout << "Invalid Input!";
        return;
    }

    for (i = 0 ; i < arr_size; i++) {

        if (arr[i] > f) {
            s = f;
            f = arr[i];
        }else if(arr[i] > s && arr[i] != f ) {
            s = arr[i];
        }
    }

    if (s == INT_MIN) {
        cout << "Here is no 2nd Largest No.";
    }else{
        cout << "2nd Largest No. is :" << s ;
    }
}
int main() {
    int arr[] = {5,3,4,6};
    find2LargestNo(arr, sizeof(arr)/sizeof(arr[0]));
    return 0;
}