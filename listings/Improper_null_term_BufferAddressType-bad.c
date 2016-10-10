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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_SIZE 8

int main()
{
	char str1[2][MAX_SIZE];

	// To trigger the flaw we need to initialize str with random content.
	for (size_t i = 0; i < MAX_SIZE; i++) {
		str1[1][i] = 'c';
	}

	if (fread(str1[1],sizeof(char),MAX_SIZE-1,stdin) == MAX_SIZE-1)
	{
		/*
			Here we don't append a null terminator character at the end
			of str1[1]. Henceforth, printf is waiting for a null-terminated
			string, and will then print the rest of the buffer until it
			encounters a null terminator character.
		*/
		printf("%s\nlength = %zu\n", str1[1] , strlen(str1[1]));
	}
	return 0;
}
