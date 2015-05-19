
#ifndef __SPLOS_MATH_P
#define __SPLOS_MATH_P
//  returns the value of x raised to the power of y
int sp_pow(int x, int y)
{
	int ret = 1;

	while(y > 0) {
		ret = ret * x;
		y = y - 1;
	}

	return ret;
}

int sp_abs(int x)
{
    if(x < 0)
      x = 0 - x;
	return x;
}
int sp_numbits(int num)
{
	int i = 0;

	if(num < 0)
	  i = i + 1;

	while( num/10 ) {
		num = num/10;
		i = i + 1;
	}
	i = i + 1;

	return i;
}
int sp_numtostring(int num, char s[])
{
	int i = 0;
	int bits = sp_numbits(num);

	if(num < 0)
	  s[0] = '-';

	i = bits;
	s[i] = '\0';
	i = i - 1;
	while (num/10 ) {
		s[i] = num%10;
		num = num / 10;
		i = i - 1;	
	}
	s[i] = num % 10;

	return bits;
}
#endif
