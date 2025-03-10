// UDP client and UDP server
// Client Side
#include<stdio.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<string.h>

int main(){
    int port,sock,binding,numrecv,numsend;
    struct sockaddr_in server,client;
    char buffersent[100],bufferrecv[100];
    socklen_t serverlen;
    serverlen=sizeof(server);
    sock=socket(AF_INET,SOCK_DGRAM,0);
    printf("Enter the Register No: ");
    scanf("%s",buffersent);
    printf("Enter the port number: ");
    scanf("%d",&port);
    server.sin_family=AF_INET;
    server.sin_addr.s_addr=htonl(INADDR_ANY);
    server.sin_port=htons(port);
    sendto(sock,&buffersent,sizeof(buffersent),0,(struct sockaddr*)&server,sizeof(server));
    recvfrom(sock,&numrecv,sizeof(numrecv),0,(struct sockaddr*)&server,&serverlen);
    printf("The Hash Sum of the Register Number\n%d\n",numrecv);
}
