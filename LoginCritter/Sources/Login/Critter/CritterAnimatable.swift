//
//  CritterAnimatable.swift
//  LoginCritter
//
//  Created by Christopher Goldsby on 4/15/18.
//  Copyright © 2018 Christopher Goldsby. All rights reserved.
//

import UIKit

protocol CritterAnimatable {
    var currentState: CATransform3D { get }
    func applyActiveStartState()
    func applyActiveEndState()
    func applyInactiveState()
}

extension CritterAnimatable where Self: UIView {
    
    var currentState: CATransform3D {
        return layer.transform
    }
    
    func applyInactiveState() {
        layer.transform = .identity
    }
}
