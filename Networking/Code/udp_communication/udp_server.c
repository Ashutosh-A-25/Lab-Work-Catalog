// UDP client and UDP server
// Server Side
#include<stdio.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<string.h>

int sum(int num){
    int out=0;
    if(num<0)
        return 0;
    else
        out=num*(num-1)/2;
    return out;
}

int main(){
    int port,sock,binding,numrecv,numsend;
    struct sockaddr_in server,client;
    char buffersent[100],bufferrecv[100];
    socklen_t clientlen;
    sock=socket(AF_INET,SOCK_DGRAM,0);
    printf("Enter the port Number\n");
    scanf("%d",&port);
    server.sin_family=AF_INET;
    server.sin_addr.s_addr=htonl(INADDR_ANY);
    server.sin_port=htons(port);
    binding=bind(sock,(struct sockaddr*)&server,sizeof(server));
    clientlen=sizeof(client);
    recvfrom(sock,&numrecv,sizeof(numrecv),0,(struct sockaddr*)&client,&clientlen);
    printf("The number received\n%d\n",numrecv);
    numsend=sum(numrecv);
    sendto(sock,&numsend,sizeof(numsend),0,(struct sockaddr*)&client,sizeof(client));
}
