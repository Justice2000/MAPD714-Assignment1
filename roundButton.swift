//
//  roundButton.swift
//  NEW-CALC
//
//  Created by Justice Ekeke on 25/09/2021.
//

import UIKit

@IBDesignable
class roundButton: UIButton
{
    
    @IBInspectable var RoundButton:Bool = false
    {
        didSet
        {
            if RoundButton
            {
                layer.cornerRadius = frame.height / 2
            }
        }
    }

    override func prepareForInterfaceBuilder()
    {
        if RoundButton
        {
            layer.cornerRadius = frame.height / 2
        }
    }
}
