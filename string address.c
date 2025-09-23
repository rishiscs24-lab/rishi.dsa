#include <stdio.h>
int main()
{
    char str[100];
    char *ptr;
    printf("Enter a string:");
    scanf("%s", str);
    ptr = str;
    printf("Characters and their addresses:\n");
    while (*ptr != '\0') {
        printf("Character: %c \t Address: %p\n", *ptr, (void*)ptr);
        ptr++;
    }
    return 0;
}
