#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// Function to perform binary addition
char *addBinary(char *a, char *b) {
    int lenA = strlen(a);
    int lenB = strlen(b);
    int maxLength = lenA > lenB ? lenA : lenB;
    
    char result[maxLength + 1]; // +1 for carry
    
    int carry = 0;
    int index = maxLength;
    
    result[index] = '\0'; // Null-terminate the result string
    
    while (index > 0) {
        index--;
        
        int numA = index < lenA ? a[lenA - 1 - index] - '0' : 0;
        int numB = index < lenB ? b[lenB - 1 - index] - '0' : 0;
        
        int sum = numA + numB + carry;
        
        carry = sum / 2;
        result[index] = (sum % 2) + '0';
    }
    
    if (carry) {
        memmove(result + 1, result, maxLength); // Shift result to the right
        result[0] = '1';
    }
    
    return strdup(result);
}

int main() {
    char binaryNum1[33];
    char binaryNum2[33];
    
    printf("Enter the first 32-bit binary number: ");
    scanf("%32s", binaryNum1);
    
    printf("Enter the second 32-bit binary number: ");
    scanf("%32s", binaryNum2);
    
    char *sum = addBinary(binaryNum1, binaryNum2);
    
    printf("Sum of %s and %s is: %s\n", binaryNum1, binaryNum2, sum);
    
    // Remember to free dynamically allocated memory
    free(sum);
    
    return 0;
}
