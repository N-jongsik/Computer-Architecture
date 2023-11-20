#include <stdio.h>

void main() {

  int i;
  unsigned int x,y,a,b;

  x = 0x644c4053;
  y = 0x510fbab4;

  for (i=0;i<100;i++) {
    a = (x << 21);
    b = (x >> 11);
    x ^= a;
    y ^= ((y << 21) | b);
    if (y>0x80000000) {
      x ^= (y >> 3);
      y ^= 0;
    }
    else {
      x ^= ~(~y >> 3);
      y ^= 0xffffffff;
    }
    a = (x << 4);
    b = (x >> 28);
    x ^= a;
    y ^= ((y << 4) | b);

    printf("%x %x\n",x,y);
  }

  for (i=0;i<256;i++) {
    x ^= (x << 11);
    if (x>0x80000000) {
      x ^= (x >> 17);
    }
    else {
      x ^= ~(~x >> 17);
    }
    x ^= (x << 2);

    printf("%x\n",x);
  }

  for (i=0;i<256;i++) {
    printf("%x\n",i);
  }


}
