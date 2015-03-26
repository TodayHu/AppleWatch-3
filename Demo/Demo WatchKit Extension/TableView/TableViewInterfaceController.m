//
//  TableViewInterfaceController.m
//  Demo
//
//  Created by Fakai Zhao on 15/3/26.
//  Copyright (c) 2015年 NeoWork. All rights reserved.
//

#import "TableViewInterfaceController.h"
#import "TableRowController.h"


@interface TableViewInterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceTable *watchTable;
@property (nonatomic, strong) NSArray *creatureList;
@end


@implementation TableViewInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    self.creatureList = [[NSArray alloc] initWithObjects:@"Bob", @"Dave", @"Jerry", @"Jorge", @"Kevin", @"Mark", @"Phil", @"Stuart", @"Tim",@"Mark", @"Phil", @"Stuart", @"Tim", nil];
    
    [self configureTableWithData:self.creatureList];
    // Configure interface objects here.
}


- (void)configureTableWithData:(NSArray*)dataObjects
{
    // row type specified in storyboard, dont forget
    [self.watchTable setNumberOfRows:[dataObjects count] withRowType:@"TableRowController"];
    
    for (NSInteger i = 0; i < self.creatureList.count; i++)
    {
        // custom class, imported and used as row controller
        TableRowController * theRow = [self.watchTable rowControllerAtIndex:i];
        
        [theRow.descriptLabel setText:dataObjects[i]];
        [theRow.logoImageView setImage:[UIImage imageNamed:@"logo"]];
    }
}

- (instancetype) contextForSegueWithIdentifier:(NSString *)segueIdentifier inTable:(WKInterfaceTable *)table rowIndex:(NSInteger)rowIndex
{
    
    return [self.creatureList objectAtIndex:rowIndex];
}
- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



