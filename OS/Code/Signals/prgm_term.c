#include <stdio.h>
#include <signal.h>
#include<stdlib.h>
// Using ctrl-z instead of ctrl-c or ctrl-// 
void sigproc()
{ 		 signal(SIGINT, sigproc); /*  */
		 /* NOTE some versions of UNIX will reset signal to default
		 after each call. So for portability reset signal each time */
 
		 printf("\nyou have pressed ctrl-c \n");
}
 
void ch(){
	signal(SIGQUIT,ch);
	printf("\nyou have pressed ctrl-\\ \n");
}
void quit()
{ 		 
	signal(SIGTSTP, quit);
	printf("\nctrl-z pressed to quit\n");
		 exit(0); /* normal exit status */
}
 
void main()
{	
	signal(SIGINT, sigproc);
	signal(SIGQUIT,ch);
	signal(SIGTSTP, quit);
	printf("ctrl-c disabled use ctrl-z' to quit\n");
	for(;;); /* infinite loop */
}
 

 

