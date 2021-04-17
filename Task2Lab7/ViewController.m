
#import "ViewController.h"

NSDictionary *temperatures;

NSDictionary *flags;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   temperatures =[NSMutableDictionary dictionary];
    
    flags =[NSMutableDictionary dictionary];


    [flags setValue: @"Belarus" forKey:@"Minsk"];
    [flags setValue:@"Belarus" forKey:@"Vitebsk"];
    [flags setValue:@"Brazil" forKey:@"Rio"];
    [flags setValue:@"Brazil" forKey:@"San-Paolo"];
     [flags setValue:@"Poland" forKey:@"Warsaw"];
     [flags setValue:@"Poland" forKey:@"Krakow"];

   
    
    [temperatures setValue:[NSNumber numberWithInt:15] forKey:@"Minsk"];
    [temperatures setValue:[NSNumber numberWithInt:31] forKey:@"Vitebsk"];
    [temperatures setValue:[NSNumber numberWithInt:24] forKey:@"Rio"];
    [temperatures setValue:[NSNumber numberWithInt:25] forKey:@"San-Paolo"];
     [temperatures setValue:[NSNumber numberWithInt:17] forKey:@"Warsaw"];
     [temperatures setValue:[NSNumber numberWithInt:18] forKey:@"Krakow"];
    
}

//Handles confirm button click
- (IBAction)ConfirmButtonClicked:(id)sender {
    
    NSString *cityName= _InputField.text;
    
    NSNumber *temperature = [temperatures objectForKey:cityName];
    
    NSString *countryFlag=[flags objectForKey:cityName];
    
    if(temperature==nil){
        _Temperature.text=@"No city found";
    }
    else{
        _Temperature.text=( [[temperature stringValue] stringByAppendingString:@" C"] );
        _CountryFlag.image=[UIImage imageNamed:countryFlag];
        _CityEmblem.image = [UIImage imageNamed:cityName];
               
    }
}

@end
