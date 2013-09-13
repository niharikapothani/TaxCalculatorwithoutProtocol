#import<Foundation/Foundation.h>
#import "tax.h"
#import "bill.h"
@interface KSTCST:Tax
-(void)CalculateTax:(Bill*) bill;
@end
