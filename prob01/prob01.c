// gcc -fno-stack-protector -no-pie -z execstack -c prob01_binary prob01.c
#include <stdio.h>

int main(){

	char name[32];
	int secret = 0;

	printf("What's your name?\n");
	fflush(stdout);
	scanf("%s", name);
	printf("Hello, %s!\n", name);
	
	if (secret != 0) {
		system("cat ./flag");
	} else {
		printf("So What?\n");
	}

	return 0;
}
