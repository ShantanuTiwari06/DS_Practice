//Linear search
#include <stdio.h>
int main()
{
   int a[100], n, element;  // a[100] for array, n for size of array, element for searcing element.
   int i;                   // i for loop.

   printf("Enter array size [1-100]: ");    // message to take array size.
   scanf("%d",&n);                          // store array size in 'n'.

   printf("Enter array elements: \n");      // message to take array elements.
   
   for(i=0; i<n; i++)       // loop for taking array elements according to given size 'n'.
   scanf("%d",&a[i]);       // store each element in a[i].

   printf("Enter element to search:");  // message to print searching element.
   scanf("%d",&element);                // store searching element in 'element'.

   for(i=0; i<n; i++)       // Main Logic for search an element in array.
   {
     if(a[i]==element)      // Compare elements in array.
     {
       printf("%d found at position %d", element, i+1);
       return 0;
     }
   }
   printf("%d not found.", element);      // Not Find Statement.
}
