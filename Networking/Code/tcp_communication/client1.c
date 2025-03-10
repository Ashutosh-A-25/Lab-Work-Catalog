#include<stdio.h>
#include<netinet/in.h>
#include<sys/socket.h>
#include<string.h>

int main()
{
    int sock,port;
    struct sockaddr_in server,client;
    char buffersent[100],bufferrecv[100];
    printf("Enter the port\n");
    scanf("%d",&port);
    sock=socket(AF_INET,SOCK_STREAM,0);
    if(sock<0)
        printf("Socket Error\n");
    else
        printf("Socket Creation\n");
    server.sin_family=AF_INET;
    server.sin_addr.s_addr=htonl(INADDR_ANY);
    server.sin_port=htons(port);
    if( (connect(sock,(struct sockaddr*)&server,sizeof(server)))<0)
        printf("Connection Error\n");
    else
        printf("Well-Connected\n");

    for(int i=0;i<2;++i)
    {
        recv(sock,bufferrecv,sizeof(bufferrecv),0);
        printf("The Message received\n%s\n",bufferrecv);
    }
    strcpy(buffersent,"How the hell are you?");
    send(sock,buffersent,sizeof(buffersent),0);
}