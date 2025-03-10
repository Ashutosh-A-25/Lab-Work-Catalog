#include<stdio.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<string.h>

int main()
{
    int sock,port,clientlen,bindout,A;
    char buffersent[100],bufferrecv[100];
    struct sockaddr_in client,server;
    clientlen=sizeof(client);
    printf("Enter your message\n");
    scanf("%s",buffersent);
    printf("Enter the port Address\n");
    scanf("%d",&port);
    sock=socket(AF_INET,SOCK_STREAM,0);
    if(sock<0)
        printf("Socket Error\n");
    else
        printf("Socket Created\n");
    client.sin_family=AF_INET;
    client.sin_addr.s_addr=htonl(INADDR_ANY);
    client.sin_port=htons(port);
    bindout=bind(sock,(struct sockaddr*)&client,sizeof(client));
    if(bindout!=0)
        printf("Binding Error\n");
    else
        printf("Binding Successful\n");
    listen(sock,5);
    A=accept(sock,(struct sockaddr*)&client,&clientlen);
    if(A<0)
        printf("Acceptance Error\n");
    else
        printf("Well-Connected\n");
    send(A,buffersent,sizeof(buffersent),0);
    strcpy(buffersent,"Roger");
    send(A,buffersent,sizeof(buffersent),0);
    recv(A,bufferrecv,sizeof(bufferrecv),0);
    printf("The message received\n%s\n",bufferrecv);
}