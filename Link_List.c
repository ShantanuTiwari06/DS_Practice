
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
