// Half pyramid using numbers.

/********************

1
1 2
1 2 3
1 2 3 4
1 2 3 4 5 

********************/

#include <iostream>
using namespace std;

int main()
{
	int i, j, rows;
	cout << "Enter the number of rows. ";
	cin >> rows;

    // main logic of pattern.

	for (i = 1; i <= rows; i++)                 // loop for row.
	{
		for (j = 1; j <= i; j++)                // loop for column.
		{
			cout << j << " ";
		}
		cout << endl;                           // for next line.
	}
	return 0; 
}