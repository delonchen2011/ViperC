//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_viperModuleName___Presenter: ___VARIABLE_viperModuleName___Presentable, ___VARIABLE_viperModuleName___InteractableOutput {

    weak private var view: ___VARIABLE_viperModuleName___Viewable?
    var interactor: ___VARIABLE_viperModuleName___InteractableInput?
    private let router: ___VARIABLE_viperModuleName___Routing

    init(interface: ___VARIABLE_viperModuleName___Viewable, interactor: ___VARIABLE_viperModuleName___InteractableInput?, router: ___VARIABLE_viperModuleName___Routing) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
