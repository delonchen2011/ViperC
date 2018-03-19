//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

// MARK: Routing

protocol ___VARIABLE_viperModuleName___Routing: class {

}

// MARK: Presentable

protocol ___VARIABLE_viperModuleName___Presentable: class {

    var interactor: ___VARIABLE_viperModuleName___InteractableInput? { get set }
}

// MARK: Interactable

protocol ___VARIABLE_viperModuleName___InteractableOutput: class {

    /** Interactor -> Presenter */
}

protocol ___VARIABLE_viperModuleName___InteractableInput: class {

    var presenter: ___VARIABLE_viperModuleName___InteractableOutput? { get set }

    /** Presenter -> Interactor */
}

// MARK: Viewable

protocol ___VARIABLE_viperModuleName___Viewable: class {

    var presenter: ___VARIABLE_viperModuleName___Presentable? { get set }

    /** Presenter -> ViewController */
}
