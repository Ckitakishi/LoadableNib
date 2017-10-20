//
//  TopViewControllerView.swift
//  LoadableNib
//
//  Created by Ckitakishi on 2017/10/20.
//  Copyright © 2017年 Yuhan Chen. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {
    
    @IBOutlet weak var footerView: FooterView!
    fileprivate let testImageName = "banner.jpg"
    
    override func viewDidLoad() {
        // Set delegate for FooterDelegate
        footerView.delegate = nil
        
        // Example of [instantiateFromNib]
        setCustomView()
    }
    
    func setCustomView() {
        let card:CardView = UIView().instantiateFromNib(CardView.self)
        if let image = fetchImage() {
            card.cardImage = image
        }
        card.cardTitle = "Birds?"
        
        let pointX = (view.frame.width - card.frame.width) / 2
        let pointY = (view.frame.height - card.frame.height - footerView.frame.height) / 2
        card.frame = CGRect(origin: CGPoint(x: pointX, y: pointY), size: card.frame.size)
        view.addSubview(card)
    }
    
    func fetchImage() -> UIImage? {
        return UIImage(named: testImageName)
    }
}

extension TopViewController: FooterViewDelegate {
    func done() {
        print("hi")
    }
}
