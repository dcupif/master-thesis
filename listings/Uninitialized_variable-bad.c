#include <stdio.h>

int main ()
{
	/* Using the value of an unitialized variable is not safe. */
	int foo = 1;
	int bar;

	/*
		We won't enter the conditionnal statement here, so the bar
		variable won't be initialized. Therefore, it is dangerous
		to use it afterwards in the print statement.
	*/
	if (foo==0)
		bar=1;

	printf("Foo: %d\nBar: %d\n", foo, bar);

	return 0;
}
