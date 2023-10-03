#include <stdio.h>

int main() {
    double number;
    printf("Enter a floating-point number: ");
    scanf("%lf", &number);

    // Treat the memory of the input number as a 64-bit binary pattern
    unsigned long long *binaryRep = (unsigned long long *)&number;

    printf("64-bit floating-point representation of %.15lf is: ", number);
    
    // Print each bit of the binary representation
    for (int i = 63; i >= 0; i--) {
        int bit = (*binaryRep >> i) & 1;
        printf("%d", bit);
        
        if (i % 4 == 0) {
            printf(" "); // Add a space for readability
        }
    }
    
    printf("\n");
    
    return 0;
}
