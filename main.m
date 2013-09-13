#import<Foundation/Foundation.h>
#import "tax.h"
#import "bill.h"
#import "taxCalculator.h"

int main()
{
   Bill *bill = [[Bill alloc]init];
   
   float amount ;
   char str[256];
   NSLog(@"Enter bill type(finished/grocery): ");
   scanf("%s",str);
  
   NSLog(@"Enter amount");
   scanf("%f",&amount);
   
   NSString *type = [NSString stringWithUTF8String:str];
   [bill setType:type];
   [bill setAmount:amount];
   
   TaxCalculator *tax =[[TaxCalculator alloc]init];
   
   [tax Calc:bill];
   
   [type release];
   [bill release];
   [tax release];  
   return 0;
}
   
