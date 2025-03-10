// UDP client and UDP server
// Server Side
// Server with lookup_table functionality
#include<stdio.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<string.h>

struct lookup_table{
    char domain[100],ip[100];
}t[20];
char ip[100],domain[100],dom[100];
int n;
void check(){
    int f=0;
    for(int i=0;i<n;++i){
        if(strcmp(domain,t[i].domain)==0){
            memcpy(ip,t[i].ip,sizeof(t[i].ip));
            f=1;break;
        }
    }if(f==0) memcpy(ip,"None",4);
}
int main(){
    int port,sock,binding;
    struct sockaddr_in server,client;
    char buffersent[100],bufferrecv[100];
    socklen_t clientlen;
    sock=socket(AF_INET,SOCK_DGRAM,0);
    printf("Creation of the Lookup_Table\nEnter the number entries\n");
    scanf("%d",&n);
    for(int i=0;i<n;++i){
        printf("Domain_Name\n");scanf("%s",t[i].domain);
        printf("IP_Address\n");scanf("%s",t[i].ip);
    }printf("Domain_Name\tIP\n");
    for (int i = 0; i < n; ++i) printf("%s\t%s\n",t[i].domain,t[i].ip);
    printf("Enter the port Number\n");
    scanf("%d",&port);
    server.sin_family=AF_INET;
    server.sin_addr.s_addr=htonl(INADDR_ANY);
    server.sin_port=htons(port);
    binding=bind(sock,(struct sockaddr*)&server,sizeof(server));
    clientlen=sizeof(client);
    recvfrom(sock,domain,sizeof(domain),0,(struct sockaddr*)&client,&clientlen);
    printf("Recieved Domain Name %s\n",domain);
    check();
    printf("The required IP address %s\n",ip);
    sendto(sock,ip,sizeof(ip),0,(struct sockaddr*)&client,sizeof(client));
}