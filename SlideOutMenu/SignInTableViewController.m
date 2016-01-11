//
//  SignInTableViewController.m
//  
//
//  Created by Jordan Faure on 12/11/2015.
//
//

#import "SignInTableViewController.h"

@interface SignInTableViewController ()
@property (strong, nonatomic) IBOutlet UITextField *username;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UIButton *signinButton;
@property (nonatomic, strong) NSArray *rest;

@end



@implementation SignInTableViewController

- (IBAction)login:(id)sender {
    NSLog(self.username.text);
    NSLog(self.password.text);
    
   // [self configureRestKit];
    [self loadRest:self.username.text password:self.password.text];
    
    
}

- (void)configureRestKit
{
    // initialize AFNetworking HTTPClient
    RKLogConfigureByName("*", RKLogLevelOff);
   // NSURL *baseURL = [NSURL URLWithString:@"http://10.224.9.193:3000/api/"];
    NSURL *baseURL = [NSURL URLWithString:@"http://163.5.84.193:3000/api/"];
    
    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:baseURL];
    
    // initialize RestKit
    RKObjectManager *objectManager = [[RKObjectManager alloc] initWithHTTPClient:client];
    
    // setup object mappings
    RKObjectMapping *venueMapping = [RKObjectMapping mappingForClass:[UserData class]];
    [venueMapping addAttributeMappingsFromArray:@[@"ID"]];
    [venueMapping addAttributeMappingsFromArray:@[@"USER"]];
    [venueMapping addAttributeMappingsFromArray:@[@"PASSWORD"]];
    [venueMapping addAttributeMappingsFromArray:@[@"EMAIL"]];
    [venueMapping addAttributeMappingsFromArray:@[@"PICTURE"]];
    [venueMapping addAttributeMappingsFromArray:@[@"DATE_CREATION"]];
    [venueMapping addAttributeMappingsFromArray:@[@"CHECK_ACCOUNT"]];
    
    
    
    // register mappings with the provider using a response descriptor
    RKResponseDescriptor *responseDescriptor =
    [RKResponseDescriptor responseDescriptorWithMapping:venueMapping
                                                 method:RKRequestMethodPOST
                                            pathPattern:@"login"
                                                keyPath:@"Users"
                                            statusCodes:[NSIndexSet indexSetWithIndex:200]];
    
    [objectManager addResponseDescriptor:responseDescriptor];
    
    RKObjectMapping *requestMapping = [RKObjectMapping requestMapping]; // objectClass == NSMutableDictionary
    [requestMapping addAttributeMappingsFromArray:@[@"USER", @"PASSWORD"]];
    RKRequestDescriptor *requestDescriptor = [RKRequestDescriptor requestDescriptorWithMapping:requestMapping
                                                                                   objectClass:[UserData class] rootKeyPath:nil];
    
    [objectManager addRequestDescriptor: requestDescriptor];

}


- (void)loadRest:(NSString *)username password:(NSString *)pwd
{
    /*   NSString *latLon = @"37.33,-122.03"; // approximate latLon of The Mothership (a.k.a Apple headquarters)
     NSString *clientID = kCLIENTID;
     NSString *clientSecret = kCLIENTSECRET;*/
    
    NSDictionary *queryParams = NULL;
    UserData *data = [UserData new];
    
    data.USER = username;
    data.PASSWORD= pwd;
    NSLog(@"%@",data.USER);
    [[RKObjectManager sharedManager] postObject:data path:@"/api/login" parameters:queryParams success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
        _rest = mappingResult.array;
        [self.tableView reloadData];
        [self performSegueWithIdentifier:@"login" sender:nil];

    }
                                        failure:^(RKObjectRequestOperation *operation, NSError *error) {
                                           NSLog(@"What do you mean by 'there is no coffee?': %@", error);
                                            self.username.text = @"";
                                            self.password.text = @"";
                                        }];


    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    self.title = @"Sign In";
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:78.0/255.0 green:28.0/255.0 blue:100.0/255.0 alpha:1.0]];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
