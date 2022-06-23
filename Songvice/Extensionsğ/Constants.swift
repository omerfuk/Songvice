//
//  Constants.swift
//  Songvice
//
//  Created by Ömer Faruk Kılıçaslan on 23.06.2022.
//

import Foundation
import UIKit

struct Images {
    
    static let img1 = UIImage(named: "img1")!
    static let img2 = UIImage(named: "img2")!
    static let img3 = UIImage(named: "img3")!
    static let img4 = UIImage(named: "img4")!
    static let img5 = UIImage(named: "img5")!
    
}

extension UIView {
    
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
    
}


