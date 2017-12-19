//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Daniel Winship on 12/18/17.
//  Copyright © 2017 Daniel Winship. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 10
    
        
    }

}
