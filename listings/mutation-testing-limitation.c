#include <stdio.h>
#include <string.h>
int main(void) {
    const char *foo = "this is a test";
    char prefix[4] = {};
    strncpy(prefix, foo, 4);
    // BUGGY: strcpy(prefix, foo);
    printf("Prefix: %.4s\n", prefix);
    return 0;
}
