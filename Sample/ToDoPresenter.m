//
//  ToDoPresenter.m
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//
 
#import "ToDoPresenter.h"

@implementation ToDoPresenter

- (instancetype)initWithInterface:(id<ToDoViewable>)interface
                       interactor:(id<ToDoInteractableInput>)interactor
                           router:(id<ToDoRouting>)router
{
    if (self = [super init])
    {
        self.view = interface;
        self.interactor = interactor;
        self.router = router;
        [self.interactor setOutput:self];
    }
    return self;
}

- (void)addToDoItem:(ToDoItem *)item
{
    [self.interactor addToDoItem:item];
}

#pragma mark - ToDoInteractableOutput

- (void)sendAddedItem:(ToDoItem *)item
{
    [self.view showAddedItem:item];
}

@end
