# ViperC
Xcode template for VIPER Architecture for both Objective-C and Swift.

- ViperC creates modules for you when you want to use VIPER architecture in your projects. You can choose your language for the VIPER modules that will be created.

## Installation

- Clone this repository
- Go to repository main folder
- ```./install.sh ViperC``` installs ViperC module for Objective-C or Swift.
- ```./install.sh ViperC-Quick``` installs ViperC unit tests module for Objective-C or Swift. It uses **Quick** and **Expecta** for Objective-C and **Quick** and **Nimble** for Swift.
- ```./install.sh ViperC-XCTest``` installs ViperC unit tests module for Objective-C or Swift. It uses default **XCTest**.

## Template Path

You can find ViperC under ```/Users/USER_NAME/Library/Developer/Xcode/Templates/File Templates/ViperC/ViperC.xctemplate```


## VIPER Diagram

![VIPER](images/viper_.png)

## Generated Source Code

Example for a ToDO module:

### Protocols

```objc
#pragma mark - WireFrameProtocol

@protocol ToDoRouting <NSObject>

@end

#pragma mark - Presentable

@protocol ToDoPresentable <NSObject>

@end

#pragma mark - Interactable

@protocol ToDoInteractableOutput <NSObject>

@end

@protocol ToDoInteractableInput <NSObject>

- (void)setOutput:(id<ToDoInteractableOutput>)output;
- (id<ToDoInteractableOutput>)getOutputProtocol;

@end

#pragma mark - ViewProtocol

@protocol ToDoViewable <NSObject>

@end
```

### Interactor

```objc
NS_ASSUME_NONNULL_BEGIN

@interface ToDoInteractor: NSObject<ToDoInteractableInput>

@property (nonatomic, weak, nullable) id<ToDoInteractableOutput> output;

@end

NS_ASSUME_NONNULL_END
```

### Presenter

```objc
NS_ASSUME_NONNULL_BEGIN

@interface ToDoPresenter: NSObject<ToDoInteractableOutput>

@property (nonatomic, weak, nullable) id<ToDoViewable> view;
@property (nonatomic) id<ToDoInteractableInput> interactor;
@property (nonatomic, weak) id<ToDoRouting> router;

- (instancetype)initWithInterface:(id<ToDoViewable>)interface
                       interactor:(id<ToDoInteractableInput>)interactor
                           router:(id<ToDoRouting>)router;

@end

NS_ASSUME_NONNULL_END
```

### build

```objc
@interface ToDoBuilder: NSObject
+ (UIViewController *)build;
@end
```

### View

```objc
NS_ASSUME_NONNULL_BEGIN

@interface ToDoViewController: UIViewController<ToDoViewable>

@property (nonatomic) ToDoPresenter *presenter;

@end

NS_ASSUME_NONNULL_END
```

## License

ViperC is released under the MIT license. See LICENSE for details.