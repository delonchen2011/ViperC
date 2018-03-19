//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
 
#import "___VARIABLE_viperModuleName___Interactor.h"
 
@implementation ___VARIABLE_viperModuleName___Interactor

#pragma mark - Interactable

- (void)setOutput:(id<___VARIABLE_viperModuleName___InteractableOutput>)output
{
    _output = output;
}

- (id<___VARIABLE_viperModuleName___InteractableOutput>)getOutputProtocol
{
    return self.output;
}
 
@end
