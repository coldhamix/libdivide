#include "libdivide.h"
#include "stdint.h"


int divide(unsigned int dividend, unsigned int divisor)
{
    __asm
   {
        mov edx, 0
        mov eax, dividend
        mov ecx, divisor
        div ecx
   }
}

int mod(unsigned int dividend, unsigned int divisor)
{
    __asm
   {
        mov edx, 0
        mov eax, dividend
        mov ecx, divisor
        div ecx
        mov eax, edx
   }
}
