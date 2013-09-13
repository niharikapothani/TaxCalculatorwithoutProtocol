#import<Foundation/Foundation.h>
#import"tax.h"
#import"bill.h"
#import "kstcst.h"
#import "vat.h"
#import"taxCalculator.h"
@implementation TaxCalculator
-(void)Calc:(Bill*) bill
{
   NSString *type=[[NSString alloc]init];
   type=[bill Type];
  
   if([type isEqualToString:@"finished"])
   {  
      KSTCST *kscs = [[KSTCST alloc]init];
      [kscs CalculateTax:bill];
      [kscs printTax];
     
   }
   else if([type isEqualToString:@"grocery"])
   {
      Vat *vatcal= [[Vat alloc]init];
      [vatcal CalculateTax:bill];
      [vatcal printTax];

   }
   [type release];
}
@end
