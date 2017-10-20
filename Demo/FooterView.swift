//
//  FooterView.swift
//  LoadableNib
//
//  Created by Ckitakishi on 2017/10/20.
//  Copyright © 2017年 Yuhan Chen. All rights reserved.
//

import UIKit

extension FooterView: Loadable {}

@IBDesignable class FooterView: UIView {
    
    var delegate: FooterViewDelegate? = nil
    
    @IBOutlet private weak var doneButton: UIButton!
    
    @IBInspectable var doneButtonTitle: String = "" {
        didSet {
            doneButton.setTitle(doneButtonTitle, for: .normal)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        instantiate()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        instantiate()
    }
    
    func instantiate() {
        instantiateFromNibOwner(FooterView.self)
    }
    
    @IBAction func done(_ sender: UIButton) {
        delegate?.done()
    }
}

protocol FooterViewDelegate {
    func done()
}
