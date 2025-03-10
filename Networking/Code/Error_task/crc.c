#include<stdio.h>
 //#include<conio.h>
 #include<string.h>
 void main() {
	int i,j,keylen,msglen;
	char input[100], key[30],temp[30],quot[100],rem[30],key1[30];
	//clrscr();
	printf("Enter Data: ");
	scanf("%s",input);
	printf("Enter Key: ");
	scanf("%s",key);
	keylen=strlen(key);
	msglen=strlen(input);
	strcpy(key1,key);
	for (i=0;i<keylen-1;i++) {
		input[msglen+i]='0';
	}
	for (i=0;i<keylen;i++)
	 temp[i]=input[i];
	for (i=0;i<msglen;i++) {
		quot[i]=temp[0];
		if(quot[i]=='0')
		 for (j=0;j<keylen;j++)
		 key[j]='0'; else
		 for (j=0;j<keylen;j++)
		 key[j]=key1[j];
		for (j=keylen-1;j>0;j--) {
			if(temp[j]==key[j])
			 rem[j-1]='0'; else
			 rem[j-1]='1';
		}
		rem[keylen-1]=input[i+keylen];
		strcpy(temp,rem);
	}
	strcpy(rem,temp);
	printf("\nQuotient is ");
	for (i=0;i<msglen;i++)
	 printf("%c",quot[i]);
	printf("\nRemainder is ");
	for (i=0;i<keylen-1;i++)
	 printf("%c",rem[i]);
	printf("\nFinal data is: ");
	for (i=0;i<msglen;i++)
	 printf("%c",input[i]);
	for (i=0;i<keylen-1;i++)
	 printf("%c",rem[i]);

	char temp1[30],rem1[30],quot1[100],error=0;
	char newdata[100];
	 printf("\nReciever end\nEnter the data recieved\n");
	 scanf("%s",newdata);

	 keylen=strlen(key);
	 msglen=strlen(newdata);
	 	strcpy(key1,key);
	for (i=0;i<keylen-1;i++) {
		newdata[msglen+i]='0';
	}
	for (i=0;i<keylen;i++)
	 temp1[i]=newdata[i];
	for (i=0;i<msglen;i++) {
		quot1[i]=temp1[0];
		if(quot1[i]=='0')
		 for (j=0;j<keylen;j++)
		 key[j]='0'; else
		 for (j=0;j<keylen;j++)
		 key[j]=key1[j];
		for (j=keylen-1;j>0;j--) {
			if(temp1[j]==key[j])
			 rem1[j-1]='0'; else
			 rem1[j-1]='1';
		}
		rem1[keylen-1]=newdata[i+keylen];
		strcpy(temp1,rem1);
	}
	strcpy(rem1,temp1);
	
	for(i=0;i<keylen-1;++i)
		if(rem1[i]=='1')
		{
			error=1;
			break;
		}
	if(error==1)
		printf("\nError in the data recieved\n");
	else
		printf("\nData well recieved");
	//getch();
}