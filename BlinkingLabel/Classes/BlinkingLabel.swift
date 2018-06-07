//
//  BlinkingLabel.swift
//  BlinkingLabel
//
//  Created by Phien Tram on 6/7/18.
//

import Foundation
public class BlinkingLabel : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = UIViewAnimationOptions(rawValue: UIViewAnimationOptions.RawValue(UInt8(UIViewAnimationOptions.repeat.rawValue) | UInt8(UIViewAnimationOptions.autoreverse.rawValue)))
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
