
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