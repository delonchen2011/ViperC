//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - Routing

@protocol ___VARIABLE_viperModuleName___Routing <NSObject>

@end

#pragma mark - Presentable

@protocol ___VARIABLE_viperModuleName___Presentable <NSObject>

@end

#pragma mark - Interactable

@protocol ___VARIABLE_viperModuleName___InteractableOutput <NSObject>

/** Interactor -> Presenter */

@end

@protocol ___VARIABLE_viperModuleName___InteractableInput <NSObject>

- (void)setOutput:(id<___VARIABLE_viperModuleName___InteractableOutput>)output;
- (id<___VARIABLE_viperModuleName___InteractableOutput>)getOutputProtocol;

/** Presenter -> Interactor */

@end

#pragma mark - Viewable

@protocol ___VARIABLE_viperModuleName___Viewable <NSObject>

/** Presenter -> ViewController */

@end