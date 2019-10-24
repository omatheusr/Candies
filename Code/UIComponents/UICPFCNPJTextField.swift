//
//  UICPFCNPJTextField.swift
//  Candies
//
//  Created by Matheus Rabelo on 10/10/18.
//  Copyright © 2018 Matheus Rabelo. All rights reserved.
//

import UIKit

public protocol UICPFCNPJTextFieldDelegate: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
}

public final class UICPFCNPJTextField: UITextField {
    
    private static let masks = (CPF: "###.###.###-##".asMask(),
                                CNPJ: "##.###.###/####-##".asMask())
    
    public static let max = (CPF: 11, CNPJ: 14)
    
    public weak var txtDelegate: UICPFCNPJTextFieldDelegate?
    
    @IBInspectable public var allowCPF: Bool = true
    @IBInspectable public var allowCNPJ: Bool = true
    
    private var maxNumberOfCharacters: Int {
        return allowCNPJ ? UICPFCNPJTextField.max.CNPJ : UICPFCNPJTextField.max.CPF
    }
    
    public var rawText: String = "" {
        didSet { update() }
    }
    
    override public func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        self.delegate = self
    }
    
    private func update() {
        if rawText.count <= UICPFCNPJTextField.max.CPF && allowCPF {
            text = rawText.apply(mask: UICPFCNPJTextField.masks.CPF)
        } else if allowCNPJ {
            text = rawText.apply(mask: UICPFCNPJTextField.masks.CNPJ)
        } else {
            text = "ERROR FORMATTING"
        }
    }
    
}

extension UICPFCNPJTextField: UITextFieldDelegate {
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string.isEmpty && !rawText.isEmpty {
            rawText = String(rawText[rawText.startIndex..<rawText.index(rawText.endIndex, offsetBy: -1)])
        } else if rawText.count < maxNumberOfCharacters {
            rawText += string
        }
        
        return false
    }

    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.txtDelegate?.textFieldShouldBeginEditing(textField) ?? true
    }
    
}
