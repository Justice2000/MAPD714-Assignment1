//
//  roundButton.swift
//  NEW-CALC
//
//  Created by Justice Ekeke on 25/09/2021.
//
//creating a round button class to make the buttons on calculator tho be display as rounded

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
                //setting corner radius for button and dividing by 2
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
