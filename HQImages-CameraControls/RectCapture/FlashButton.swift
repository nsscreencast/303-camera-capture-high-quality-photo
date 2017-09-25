//
//  FlashButton.swift
//  RectCapture
//
//  Created by Ben Scheirman on 9/15/17.
//  Copyright © 2017 NSScreencast. All rights reserved.
//

import UIKit

class FlashButton : UIButton {
    
    let TapSize = 50
    
    override class var requiresConstraintBasedLayout: Bool { return true }
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: TapSize, height: TapSize))
        tintColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        
        adjustsImageWhenHighlighted = false
        
        setImage(#imageLiteral(resourceName: "Flash"), for: .normal)
        setImage(#imageLiteral(resourceName: "NoFlash"), for: .selected)
        
        imageView?.contentMode = .center
        
        addTarget(self, action: #selector(onFlashTapped), for: .touchUpInside)
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: TapSize, height: TapSize)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    @objc func onFlashTapped() {
        isSelected = !isSelected
    }
}
