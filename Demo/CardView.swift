//
//  CardView.swift
//  LoadableNib
//
//  Created by Ckitakishi on 2017/10/20.
//  Copyright © 2017年 Yuhan Chen. All rights reserved.
//

import UIKit

extension CardView: Loadable {}

class CardView: UIView {
    
    @IBOutlet fileprivate weak var titleLabel: UILabel!
    @IBOutlet fileprivate weak var imageView: UIImageView!
    
    var cardTitle: String = "" {
        didSet {
            titleLabel.text = cardTitle
        }
    }
    
    var cardImage: UIImage! {
        didSet {
            imageView.image = cardImage
        }
    }
}

