//
//  ToDoBuilder.m
//  Sample
//
//  Created by mac on 2018/3/6.
//  Copyright © 2018年 Abdullah Selek. All rights reserved.
//

#import "ToDoBuilder.h"
#import "ToDoViewController.h"
#import "ToDoInteractor.h"
#import "ToDoPresenter.h"
#import "ToDoRouter.h"

@implementation ToDoBuilder
+ (UIViewController *)build
{
    NSString *viewName = NSStringFromClass([ToDoViewController class]);
    ToDoViewController *viewController = [[ToDoViewController alloc] initWithNibName:viewName bundle:nil];
    ToDoInteractor *interactor = [[ToDoInteractor alloc] init];
    ToDoRouter *router = [[ToDoRouter alloc] init];
    ToDoPresenter *presenter = [[ToDoPresenter alloc] initWithInterface:viewController interactor:interactor router:router];
    viewController.presenter = presenter;
    return viewController;
}
@end
