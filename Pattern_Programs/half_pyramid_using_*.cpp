// Half pyramid using *.

/***********

*
* *
* * *
* * * *
* * * * *

***********/

#include <iostream>
using namespace std;

int main()
{
	int i, j, rows;
	cout << "Enter the number of rows. ";
	cin >> rows;

    // main logic loop of program.

	for (i = 1; i <= rows; i++)                     // loop for row.      
	{
		for (j = 1; j <= i; j++)                    // loop for column.
		{
			cout << " * ";
		}
		cout << endl;
	}
	return 0; 
}