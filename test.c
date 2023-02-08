#include <stdio.h>
#include <libtypewriter.h>
int main() {
	typewriter("This should print each character with\n",3);
	typewriter("a small delay in between each one.\n",3);

	printf("\nTest succeeded!\n");
	return 0;
}
