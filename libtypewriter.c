#include <stdio.h>
#include <unistd.h>
void typewriter(char txt[], int time) {
	time *= 10000;
	for(int i = 0; txt[i] != '\0'; i++) {
		printf("%c",txt[i]);
		fflush(stdout);
		usleep(time);
	}
}

/* Example on how to use typewriter function:
 *
 * typewriter("Hello World\n", 3);
 *
 * The string is the text that is printed to stdout.
 * The integer determines how slow each char is printed.
 * The bigger the integer, the longer each char takes
 * to be printed.
 *
 */
