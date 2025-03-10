/* sig_talk.c --- Example of how 2 processes can talk */
/* to each other using kill() and signal() */
/* We will fork() 2 process and let the parent send a few */
/* signals to it`s child  */
/* cc sig_talk.c -o sig_talk  */
#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include<wait.h>
#include <unistd.h>
void sighup();/* routines child will call upon sigtrap */
void sigint();
void hell();
void sigquit();

void main()
{   
  int pid;
  pid=fork();
  /* get child process */
  
   if (pid < 0){
        perror("fork");
        exit(1);
    }
    
   if (pid == 0)
     { /* child */
       signal(SIGHUP,sighup);/* set function calls */
       sleep(2);
       signal(SIGINT,sigint);
       sleep(2);
       signal(SIGTSTP,hell);
       sleep(2);
       signal(SIGQUIT, sigquit);
       for(;;); /* loop for ever */
     }
  else /* parent */
     {  /* pid hold id of child */
      sleep(2);
       printf("\nPARENT: sending SIGHUP\n\n");
       kill(pid,SIGHUP);
       sleep(2); /* pause for 3 secs */
       printf("\nPARENT: sending SIGINT\n\n");
       kill(pid,SIGINT);
       sleep(2);
       printf("\nPARENT: sending SIGTSTP\n\n");
       kill(pid,SIGTSTP);
       sleep(2);/* pause for 3 secs */
       printf("\nPARENT: sending SIGQUIT\n\n");
       kill(pid,SIGQUIT);
       sleep(2);
     }
}

void sighup(){  signal(SIGHUP,sighup); /* reset signal */
   printf("CHILD: I have received a SIGHUP\n");
}

void sigint(){  signal(SIGINT,sigint); /* reset signal */
   printf("CHILD: I have received a SIGINT\n");
}

void hell(){
    signal(SIGTSTP,hell);
    printf("CHILD: Hello Father, I have recieved SIGTSTP\n\n");
}
void sigquit(){ 
  signal(SIGQUIT,sigquit);
    printf("CHILD: My DADDY has reaped me!!!\n");
    exit(0);
}
