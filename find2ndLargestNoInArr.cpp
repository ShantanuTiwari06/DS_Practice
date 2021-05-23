
/**
Aproach 1 : Without Sorting / In a Single Traversal.  

Step 1 : Take 3 var i, first, second and set first and second = INT_MIN
Step 2 : Check condition if arr_size < 2 Then, print "Invalid Input" & after print use return keyword.
Step 3 : Run Loop from i = 0 to less than arr_size 
Step 4 : Inside loop 1st condition is : if (arr[i] > first) , Then, s = f ; f = arr[i];
Step 5 : Inside loop 2nd condition is : if (arr[i] > s && arr[i] != f) ; Then, s =  arr[i];
Step 6 : Outside loop if (s == Int_Min) ; Then, print "None 2nd largest no found."
            Else, print "2nd Largest no is :" << s;

NOTE :  1. make func with return type void
        2. in main() at last return 0;

**/


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