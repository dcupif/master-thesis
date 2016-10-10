/* This software was developed at the National Institute of Standards and
 * Technology by employees of the Federal Government in the course of their
 * official duties. Pursuant to title 17 Section 105 of the United States
 * Code this software is not subject to copyright protection and is in the
 * public domain. NIST assumes no responsibility whatsoever for its use by
 * other parties, and makes no guarantees, expressed or implied, about its
 * quality, reliability, or any other characteristic.

 * We would appreciate acknowledgement if the software is used.
 * The SAMATE project website is: http://samate.nist.gov
*/

#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *arg[])
{
	/*  Strings    "ABC"       "EFG"  */
	int x[2] = {0x00434241, 0x00474645};
	int *p = x;
	char *s=(char *)p+1;
	/*
		If you don't cast the 'p+1' factor, you'll end up
		with a 1 byte shift corresponding to a char instead
		of a 4 byte shift corresponding to an integer.
		Be careful then, it really depends on what you want
		to do, errors can happen very quickly.
	*/
	printf ("%s\n",s);

	return 0;
}
