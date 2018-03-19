//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "___VARIABLE_viperModuleName___Protocols.h"

NS_ASSUME_NONNULL_BEGIN

@interface ___VARIABLE_viperModuleName___Presenter : NSObject<___VARIABLE_viperModuleName___InteractableOutput, ___VARIABLE_viperModuleName___Presentable>

@property (nonatomic, weak, nullable) id<___VARIABLE_viperModuleName___Viewable> view;
@property (nonatomic) id<___VARIABLE_viperModuleName___InteractableInput> interactor;
@property (nonatomic) id<___VARIABLE_viperModuleName___Routing> router;

- (instancetype)initWithInterface:(id<___VARIABLE_viperModuleName___Viewable>)interface
                       interactor:(id<___VARIABLE_viperModuleName___InteractableInput>)interactor
                           router:(id<___VARIABLE_viperModuleName___Routing>)router;

@end

NS_ASSUME_NONNULL_END