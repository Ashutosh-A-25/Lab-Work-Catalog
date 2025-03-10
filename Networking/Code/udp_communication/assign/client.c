// UDP client and UDP server
// Client Side
// Client to get to ip for a domain
#include<stdio.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<string.h>

int main(){
    int port,sock,binding;
    char dom[100],ip[100];
    struct sockaddr_in server,client;
    char buffersent[100],bufferrecv[100];
    socklen_t serverlen;
    serverlen=sizeof(server);
    sock=socket(AF_INET,SOCK_DGRAM,0);
    printf("Enter the Domain_Name\n");
    scanf("%s",dom);
    printf("Enter the port number\n");
    scanf("%d",&port);
    server.sin_family=AF_INET;
    server.sin_addr.s_addr=htonl(INADDR_ANY);
    server.sin_port=htons(port);
    sendto(sock,dom,sizeof(dom),0,(struct sockaddr*)&server,sizeof(server));
    recvfrom(sock,ip,sizeof(ip),0,(struct sockaddr*)&server,&serverlen);
    printf("The IP recieved for the domain name %s\n%s\n",dom,ip);
}
