//
//  ToDoPresenter.h
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoProtocols.h"
#import "ToDoItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoPresenter : NSObject<ToDoInteractableOutput>

@property (nonatomic, weak, nullable) id<ToDoViewable> view;
@property (nonatomic) id<ToDoInteractableInput> interactor;
@property (nonatomic, weak) id<ToDoRouting> router;

- (instancetype)initWithInterface:(id<ToDoViewable>)interface
                       interactor:(id<ToDoInteractableInput>)interactor
                           router:(id<ToDoRouting>)router;
- (void)addToDoItem:(ToDoItem *)item;

@end

NS_ASSUME_NONNULL_END
