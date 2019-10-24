//
//  UIRoundedView.swift
//  Candies
//
//  Created by Matheus Rabelo on 10/10/18.
//  Copyright © 2018 Matheus Rabelo. All rights reserved.
//

import UIKit

public final class UIRoundedView: UIView {
    
    private var borderLayer: CAShapeLayer?
    
    @IBInspectable
    public var radius: CGFloat = 0 {
        didSet { update() }
    }
    
    @IBInspectable
    public var borderWidth: CGFloat = 0 {
        didSet { update() }
    }
    
    @IBInspectable
    public var borderColor: UIColor = .clear {
        didSet { update() }
    }
    
    @IBInspectable
    public var smoothCorners: Bool = false {
        didSet { update() }
    }
    
    override public func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        layer.masksToBounds = true
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        update()
    }
    
    
    private func update() {
        if smoothCorners {
            layer.cornerRadius = 0
            layer.borderColor = nil
            layer.borderWidth = 0
            
            let mask = CAShapeLayer()
            mask.frame = bounds
            
            mask.path = UIBezierPath(roundedRect: bounds, cornerRadius: radius).cgPath
            layer.mask = mask
            
            if borderLayer == nil {
                let newBorderLayer = CAShapeLayer()
                layer.addSublayer(newBorderLayer)
                borderLayer = newBorderLayer
            }
            
            borderLayer?.path = mask.path
            borderLayer?.fillColor = UIColor.clear.cgColor
            borderLayer?.strokeColor = borderColor.cgColor
            borderLayer?.lineWidth = borderWidth
            borderLayer?.frame = bounds
        } else {
            borderLayer?.removeFromSuperlayer()
            layer.mask = nil
            layer.cornerRadius = radius
            layer.borderColor = borderColor.cgColor
            layer.borderWidth = borderWidth
        }
    }
    
}
