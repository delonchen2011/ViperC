//
//  ToDoProtocols.h
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoItem.h"

#pragma mark - Routing

@protocol ToDoRouting <NSObject>

@end

#pragma mark - PresenterProtocol

@protocol ToDoPresentable <NSObject>

@end

#pragma mark - InteractorProtocol

@protocol ToDoInteractableOutput <NSObject>

- (void)sendAddedItem:(ToDoItem *)item;

@end

@protocol ToDoInteractableInput <NSObject>

- (void)setOutput:(id<ToDoInteractableOutput>)output;
- (id<ToDoInteractableOutput>)getOutputProtocol;

- (void)addToDoItem:(ToDoItem *)item;

@end

#pragma mark - ViewProtocol

@protocol ToDoViewable <NSObject>

- (void)showAddedItem:(ToDoItem *)item;

@end
