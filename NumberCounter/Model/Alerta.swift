//
//  Alerta.swift
//  NumberCounter
//
//  Created by Gabriel de Castro Chaves on 08/06/22.
//

import UIKit

class Alerta {
    
    let controller: UIViewController
    
    init(controller:UIViewController) {
        self.controller = controller
    }

    func exibe(title: String = "Atenção", message: String) {
    
        let alerta = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let ok = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
    alerta.addAction(ok)
    controller.present(alerta, animated:  true, completion: nil)
}
}

