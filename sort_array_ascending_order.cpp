#include <iostream>
using namespace std;
 
int main()
{
    int i, j, n, temp;
    int arr[n];
 
    cout << "Enter size of array: " << endl;
    cin >> n;
 
    cout << "Enter elements in array: " << endl;
    for(i = 0 ; i < n ; i++)
    {
        cin >> arr[i];
    }


    for(i = 0 ; i < n ; i++)
    {
        for(j = i + 1 ; j < n ; j++)
        {

            if(arr[j] < arr[i])
            {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }

    cout << "Elements of array in sorted ascending order: " << endl;
    for(i = 0 ; i < n; i++)
    {
        cout << arr[i] << endl;
    }
 
    return 0;
}