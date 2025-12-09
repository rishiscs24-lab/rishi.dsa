#include <stdio.h>
#include <stdlib.h>
struct node
{
    int data;
    struct node*next;
};

void push(struct node**head_ref,int new_data)
{
    struct node*new_node=(struct node*)malloc(sizeof(struct node));
    new_node->data=new_data;
    new_node->next=(*head_ref);
    (*head_ref)=new_node;
}

void append(struct node**head_ref,int new_data)
{
    struct node*new_node=(struct node*)malloc(sizeof(struct node));
    struct node*last=*head_ref;
    new_node->data=new_data;
    new_node->next=NULL;
    if(*head_ref==NULL)
    {
        *head_ref=new_node;
        return;
    }
    while(last->!=NULL)
    last=last->next;
    last->next=new_node;
    return;
}
void printlist(struct node*node)
{
    while(node!=NULL)
    {
        printf("%d",node_data);
        node=node->next;
    }
}

int main()
{
    struct node*head=NULL;
    append(&head,6);
    push(&head,7);
    push(&head,1);
    append(&head,4);
    printf("\n creaed linkedlist is:"):
    printlist(head);
    return 0;
}
