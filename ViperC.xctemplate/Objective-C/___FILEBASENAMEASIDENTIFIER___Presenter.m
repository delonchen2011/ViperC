//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
 
#import "___VARIABLE_viperModuleName___Presenter.h"

@implementation ___VARIABLE_viperModuleName___Presenter

- (instancetype)initWithInterface:(id<___VARIABLE_viperModuleName___Viewable>)interface
                       interactor:(id<___VARIABLE_viperModuleName___InteractableInput>)interactor
                           router:(id<___VARIABLE_viperModuleName___Routing>)router
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

@end
