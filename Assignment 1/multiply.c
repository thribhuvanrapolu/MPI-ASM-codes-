#include <stdio.h>

int main() {
    int num1, num2;
    
    printf("Enter the first 32-bit number: ");
    scanf("%d", &num1);
    
    printf("Enter the second 32-bit number: ");
    scanf("%d", &num2);
    
    // Initialize variables to store the final result and intermediate values
    long long result = 0;
    int multiplier = 1;
    
    // Loop through each bit of num2
    while (num2 != 0) {
        // Check the least significant bit of num2
        if (num2 & 1) {
            result += (long long)num1 * multiplier; // Add num1 shifted by the multiplier
        }
        
        // Shift num1 left by 1 bit and double the multiplier
        num1 <<= 1;
        multiplier <<= 1;
        
        // Shift num2 right by 1 bit
        num2 >>= 1;
    }
    
    printf("Multiplication result: %lld\n", result);
    
    return 0;
}
