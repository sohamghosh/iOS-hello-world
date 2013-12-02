#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad // After loadView. Typically, lables/buttons go here.
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    // Red Button
    self.redButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.redButton.frame = CGRectMake(100, 100, 100, 44);
    [self.redButton setTitle:@"Paint red!" forState:UIControlStateNormal];
    
    [self.redButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.redButton];
    
    // Green Button
    self.greenButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.greenButton.frame = CGRectMake(100, 300, 100, 44);
    [self.greenButton setTitle:@"Make 100%" forState:UIControlStateNormal];
    
    [self.greenButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];    
    [self.view addSubview:self.greenButton];
    
    // Label
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
    firstLabel.backgroundColor = [UIColor clearColor];
    firstLabel.text = @"Hello, welcome to my app";
    
    [self.view addSubview:firstLabel];
}

- (void) buttonPressed:(UIButton *) sender
{
    NSLog(@"Button pressed. Sender: %@", sender);
    //self.view.alpha = ((double) arc4random() / 0x100000000);
    //sender.superview.backgroundColor = [UIColor blueColor];
    
    if ([sender isEqual:self.redButton]) {
        self.view.backgroundColor = [UIColor redColor];
    } else {
        self.view.backgroundColor = [UIColor greenColor];
    }
}

- (void) loadView // Called first time view property is accessed.
{
    // Paint (View)
    CGRect bounds = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:bounds];
    self.view = view;
}

@end