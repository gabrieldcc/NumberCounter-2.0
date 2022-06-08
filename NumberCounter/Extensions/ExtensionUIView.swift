//
//  ExtensionUIView.swift
//  NumberCounter
//
//  Created by Gabriel de Castro Chaves on 08/06/22.
//

import Foundation
import UIKit

extension UIView {
    
    func roundCorners(cornerRadius: CGFloat, typeCorner: CACornerMask) {
        self.layer.cornerRadius = cornerRadius
        self.layer.maskedCorners = typeCorner
        self.clipsToBounds = true
    }
}


extension CACornerMask {
    static public let inferiorDireito: CACornerMask = .layerMaxXMaxYCorner
    static public let inferiorEsquerdo: CACornerMask = .layerMinXMaxYCorner
    static public let superiorDireito: CACornerMask = .layerMaxXMinYCorner
    static public let superiorEsquerdo: CACornerMask = .layerMinXMinYCorner
}
