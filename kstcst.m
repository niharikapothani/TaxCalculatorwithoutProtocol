#import "tax.h"
#import "bill.h"
#import "kstcst.h"

@implementation KSTCST
-(void)CalculateTax:(Bill*) bill
{
   float ksrate=0.14;
   float csrate=0.04;
   
   float amt=[bill amount];
   totalAmount=amt+amt*ksrate;
   totalTax=amt*ksrate;
   
   totalAmount=totalAmount+totalAmount*csrate;
   totalTax=totalTax+totalAmount*csrate;
}
@end
