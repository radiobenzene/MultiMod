#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<string.h>

extern void change(char *s);
extern void del(char *s,char *d);
int main()
{
        char str[101],c,dest[101];
        int counter;
        counter=0;
        memset(dest,0,strlen(dest)); 
        dest[counter]='\0';
        printf("Enter string:");
        c=getchar();
        while(((c) != '.'))
        {
			
			str[counter]=c;
			counter++;
			c=getchar();
			str[counter]='\0';
	    }
        if(counter>100 || counter==0)
        {
                printf("Check string length\n");
                printf("EXIT\n");
                exit(2);
        }
        if((isdigit(str[0]) && isdigit(str[counter-1])) && (str[0]!=str[counter-1]))
        {
                printf("RULE 1, SUBRULE 3\n");
                change(str);
                printf("%s\n", str);
        }
        else
        {
                printf("RULE 2, SUBRULE 4\n");
                del(str,dest);
                dest[counter]='\0';
                printf("%s\n",dest);
        }
        return 0;
}
