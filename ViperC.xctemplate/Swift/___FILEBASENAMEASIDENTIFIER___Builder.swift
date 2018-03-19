//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_viperModuleName___Listener: class {

}

class ___VARIABLE_viperModuleName___Builder {

    static func build() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = ___VARIABLE_viperModuleName___ViewController(nibName: nil, bundle: nil)
        let interactor = ___VARIABLE_viperModuleName___Interactor()
        let router = ___VARIABLE_viperModuleName___Router()
        let presenter = ___VARIABLE_viperModuleName___Presenter(interface: view,
                                                                interactor: interactor,
                                                                router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        
        return view
    }

}
