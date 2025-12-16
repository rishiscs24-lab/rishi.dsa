#include <stdio.h>
#include <stdlib.h>

struct node {
    int data;
    struct node *left;
    struct node *right;
};

struct node* create(int item)
{
    struct node *temp = (struct node*)malloc(sizeof(struct node));
    temp->data = item;
    temp->left = NULL;
    temp->right = NULL;
    return temp;
}

struct node* insert(struct node *root, int item)
{
    if (root == NULL)
        return create(item);

    if (item < root->data)
        root->left = insert(root->left, item);
    else if (item > root->data)
        root->right = insert(root->right, item);

    return root;
}

void inorder(struct node *root)
{
    if (root != NULL)
    {
        inorder(root->left);
        printf("%d ", root->data);
        inorder(root->right);
    }
}

void preorder(struct node *root)
{
    if (root != NULL)
    {
        printf("%d ", root->data);
        preorder(root->left);
        preorder(root->right);
    }
}

void postorder(struct node *root)
{
    if (root != NULL)
    {
        postorder(root->left);
        postorder(root->right);
        printf("%d ", root->data);
    }
}

int main()
{
    struct node *root = NULL;
    int n, item, i;

    printf("Enter number of nodes: ");
    scanf("%d", &n);

    for (i = 0; i < n; i++)
    {
        scanf("%d", &item);
        root = insert(root, item);
    }

    printf("\nInorder Traversal: ");
    inorder(root);

    printf("\nPreorder Traversal: ");
    preorder(root);

    printf("\nPostorder Traversal: ");
    postorder(root);

    return 0;
}


O/P:-
nter number of nodes: 4
10
20
30
40

Inorder Traversal: 10 20 30 40
Preorder Traversal: 10 20 30 40
Postorder Traversal: 40 30 20 10
