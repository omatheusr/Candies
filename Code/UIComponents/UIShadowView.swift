//
//  UIShadowView.swift
//  Candies
//
//  Created by Matheus Rabelo on 10/10/18.
//  Copyright © 2018 Matheus Rabelo. All rights reserved.
//

import UIKit

public final class UIShadowView: UIView {
    
    @IBInspectable
    public var shadowColor: UIColor = .black {
        didSet { layer.shadowColor = shadowColor.cgColor }
    }
    
    @IBInspectable
    public var offsetWidth: CGFloat = 0 {
        didSet {
            layer.shadowOffset = CGSize(width: offsetWidth, height: layer.shadowOffset.height)
        }
    }
    
    @IBInspectable
    public var offsetHeight: CGFloat = 0 {
        didSet {
            layer.shadowOffset = CGSize(width: layer.shadowOffset.width, height: offsetHeight)
        }
    }
    @IBInspectable
    public var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    @IBInspectable
    public var shadowOpacity: Float = 0 {
        didSet {
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    override public func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
    }
    
}
