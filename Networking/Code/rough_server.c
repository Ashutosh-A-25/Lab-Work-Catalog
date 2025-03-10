// UDP client and UDP server
// Server Side
#include<stdio.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<string.h>
#include "ctype.h"

int hash(char ar[],int n){
    int out=0;
    for(int i=0;i<n;++i){
        if(ar[i]>=65 && ar[i]<=90)
            out+=(int)ar[i]-64;
        else if(ar[i]>=97)
            out+=(int)ar[i]-96;
        else 
            out+=(int)ar[i]-48;
    }
    return out;
}

int main(){
    int port,sock,binding,numsend;
    struct sockaddr_in server,client;
    char bufferrecv[100];
    socklen_t clientlen;
    sock=socket(AF_INET,SOCK_DGRAM,0);
    printf("Enter the port Number\n");
    scanf("%d",&port);
    server.sin_family=AF_INET;
    server.sin_addr.s_addr=htonl(INADDR_ANY);
    server.sin_port=htons(port);
    binding=bind(sock,(struct sockaddr*)&server,sizeof(server));
    clientlen=sizeof(client);
    recvfrom(sock,&bufferrecv,sizeof(bufferrecv),0,(struct sockaddr*)&client,&clientlen);
    // int k=strlen(bufferrecv);
    printf("The Register Number received\n%s\n",bufferrecv);
    numsend=hash(bufferrecv,strlen(bufferrecv));
    // printf("Ans: %d\n",numsend);
    sendto(sock,&numsend,sizeof(numsend),0,(struct sockaddr*)&client,sizeof(client));
}
