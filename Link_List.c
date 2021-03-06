// Link List Program with--
// Insertion at end.
// Deletion from first.
// View List Function.
// Menu function for user.

#include <stdio.h>
#include <stdlib.h>
struct node                                         // Node - info for Data & *link for storing address of next.
{                           
    int info;
    struct node *link;
};

struct node *START=NULL;                            // Start pointer initially store NULL.

// Create a new Node Function

struct node* createNode()                           // function to create new-node here, struct node* is a return type.
{             
    struct node *n;                                  // create temporary pointer.
    n=(struct node *)malloc(sizeof(struct node));    // assign whatever is return by the malloc function into n & type cast it in node bcoz malloc() return void type pointer.
    return(n);
}

// Insert Node at end Function

void insertNode()                      // function to enter values in node.
{
    struct node * temp, *t;            // *temp used, when we enter 1st node in list otherwise in *t.
    temp = createNode();               // Here, (n) is destroyed of createNode().
    printf("Enter a number ");          // message to user to take value for node.
    scanf("%d",&temp->info);           // store value in (info) variable of node & pass it to temp.
    temp->link = NULL;                 // Set Link i.e.; pointer to NULL.

    if (START == NULL)                 // Condition to check node is 1st node or not, If 1st otherwise in else.
        START = temp;                  // Store temp info into START pointer.  
    else
    {
        t = START;                    // Store whatever value in START pass into (t) & continue this process till NULL.
        while (t->link!=NULL)         // Continue till link pointer to NULL. 
            t = t->link;
        t->link = temp;             // store temp pointer value into t->link.
    }   
}

// Delete Node from start Function

void deleteNode()
{
    struct node *r;                // Take (r) to store the address of 1st node which is stored in START pointer.
    if (START == NULL)
        printf("List is empty");
    else
    {
        r = START;                  // Store value of START into r. So, address of 1st node enter into r pointer.
        START = START->link;        // Store the value of link pointer of 1st node into START pointer.
        free(r);                    // free the r pointer to delete the 1st node.
    }   
}

// Function to view the list.

void viewList()
{
    struct node *t;                  
    if (START == NULL)              // Condition when list is empty.
        printf("List is empty");
    else
    {
        t = START;                          // Store start value to (t).
        while(t!=NULL)                      // Run loop till (t) not equal to NULL.
        {
            printf("%d ", t->info );        // Print the values of nodes.
            t=t->link;                      // increament in t value to next nodes.
        }
    }
}

// Menu function 

int menu()
{
    int ch;
    printf("\n1. Add value to the list");
    printf("\n2. Delete first value");
    printf("\n3. View list");
    printf("\n4. Exit");
    printf("\n\nEnter your choice ");
    scanf("%d",&ch);
    return(ch);
}

// Main Function

void main()
{
    while (1)
    {
        clrscr();
        switch(menu())
        {
            case 1:
                insertNode();
                break;
            case 2:
                deleteNode();
                break;
            case 3:
                viewList();
                break;
            case 4:
                exit(0);
            default:
                printf("Invalid Choice");
        }
        getch();
    }
}
