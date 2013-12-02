#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) UIButton *greenButton;
@property (nonatomic, weak) UIButton *redButton;

- (void) buttonPressed:(UIButton *) sender;

@end
