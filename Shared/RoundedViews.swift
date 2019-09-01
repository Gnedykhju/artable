//
//  RoundedViews.swift
//  Artable
//
//  Created by User on 01/09/2019.
//  Copyright © 2019 Yulia Gnedykh. All rights reserved.
//

import UIKit

class RoundedButton : UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
    }
}

class RoundedShadowView : UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.shadowColor = #colorLiteral(red: 0.1568627451, green: 0.6666666667, blue: 0.7529411765, alpha: 1)
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 3
    }
}

class RoundedImageView : UIImageView {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
    }
}
