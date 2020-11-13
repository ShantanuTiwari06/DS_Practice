/***********
 * 
 * Input => arr[1,4,6,3]
 * Output => 1,3,4,6
 * 
 * **********/

#include <iostream>
using namespace std;
 
int main()
{
    int i, j, n, temp;
    int arr[n];

    // Enter the size of array
    cout << "Enter size of array: " << endl;
    cin >> n;
     
    // Storing elements of array
    cout << "Enter elements in array: " << endl;
    for(i = 0 ; i < n ; i++)
    {
        cin >> arr[i];
    }

    //Sorting an array in ascending order
    for(i = 0 ; i < n ; i++)
    {
        for(j = i + 1 ; j < n ; j++)
        {
            
            //If there is a smaller element found on right of the array then swap it.
            if(arr[j] < arr[i])
            {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }

    // Printing the sorted array in ascending order
    cout << "Elements of array in sorted ascending order: " << endl;
    for(i = 0 ; i < n; i++)
    {
        cout << arr[i] << endl;
    }
 
    return 0;
}