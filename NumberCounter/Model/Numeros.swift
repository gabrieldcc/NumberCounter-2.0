//
//  Numeros.swift
//  NumberCounter
//
//  Created by Gabriel de Castro Chaves on 08/06/22.
//

import UIKit

class Numeros: NSObject {
    
    //MARK: Atributos
    var collectionNumbers: [Int] = [0]
    
    
    //MARK: Métodos
    func soma(_ label:  UILabel) {
    if collectionNumbers.isEmpty == true {
        collectionNumbers.append(0)
    }
        if let lastNumber = collectionNumbers.last {
            let result = lastNumber + 1
        collectionNumbers.append(result)
        }
        if let last = collectionNumbers.last {
            label.text = "\(last)"
        }
    }
    

    func subtrai(_ label: UILabel, alertaController: UIViewController) {
        guard let lastNumber = collectionNumbers.last else {return}
        if lastNumber > 0 {
            collectionNumbers.removeLast()
            guard let lastNumberNow = collectionNumbers.last else {return}
            label.text  = "\(lastNumberNow)"
            }
        else  {
            Alerta(controller: alertaController).exibe(title: "Alerta", message: "Não há números para remover")
        }
    }
    
    
    func resetAll(_ label: UILabel) {
        collectionNumbers.removeAll()
        collectionNumbers.append(0)
        if let last = collectionNumbers.last {
            label.text = "\(last)"
    }
}


}
