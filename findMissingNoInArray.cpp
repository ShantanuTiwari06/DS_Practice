/*
Approach 1 : 
Step 1 : Find Sum of 1 to n no. // n is number of elements in array.
Step 2 : Decrease each e;ement value from sum of n numbers with help of loop iterations for each element in array.
Step 3 : Return the Remaining sum of n numbers which is left by loop iterations.
*/


#include <iostream>
using namespace std;


int findMissingNo(int a[], int n) {
    int i;
    int total = (n+1) * (n+2) / 2;
    for(i = 0 ; i < n ; i++) 
        total -= a[i];
    return total;
}

int main() {
    int arr[]= {1, 2, 4, 5, 6};
    cout << findMissingNo(arr, sizeof(arr)/sizeof(arr[0]));
}

/*
----------------------------------------------------------------
Approach 2:
Step 1 : Find number of elements in arr by sizeof() concept.
Step 2 : Set the var sum = 1 & loop iteration initial value = 2
Step 3 : Run the loop from initial value 2 to (number of elements in arr + 1)
Step 4 : Incraese the sum = sum += i in loop
Step 5 : Decrease the sum = sum -= arr[i-2] in loop.
Step 6 : Return sum 
 */


// a represents the array
// n : Number of elements in array a
int getMissingNo(int a[], int n)
{
	int i, total=1;
	
	for ( i = 2; i<= (n+1); i++)
	{
		total+=i;
		total -= a[i-2];
	}
	return total;
}

//Driver Program
int main() {
	int arr[] = {1, 2, 3, 5};
	cout<<getMissingNo(arr,sizeof(arr)/sizeof(arr[0]));
	return 0;
}

//This code is contributed by Ankur Goel
