/*
 *Author: Justice Ekeke
 *Student ID: 301160908
 *Date: September 24, 2021
 *
 *Author: Shrijan Karki
 *Student ID: 301222636
 *Date: September 24, 2021
 *
 */


import UIKit

enum Operation:String
{
    case Add = "+"
    case Subtract = "-"
    case Divide = "/"
    case Multiply = "*"
    case NULL = "Null"
}

class ViewController: UIViewController
{

    @IBOutlet weak var outputLabel: UILabel!
    
    var runningNumber = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""
    var currentOperation:Operation = .NULL
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        outputLabel.text = "0"
        
        
    }

    @IBAction func numberPressed(_ sender: roundButton)
    {
        if runningNumber.count <= 8
        {
            runningNumber += "\(sender.tag)"
            outputLabel.text = runningNumber
        }
    }
    
    @IBAction func allClearPressed(_ sender: roundButton)
    {
        runningNumber = ""
        leftValue = ""
        rightValue = ""
        result = ""
        currentOperation = .NULL
        outputLabel.text = "0"
    }
    
    @IBAction func clearPressed(_ sender: roundButton) {
    }
    
    @IBAction func dotPressed(_ sender: roundButton)
    {
        if runningNumber.count <= 7
        {
            runningNumber += "."
            outputLabel.text = runningNumber
        }
    }
    
    @IBAction func equalPressed(_ sender: roundButton)
    {
        
    }
    
    
    @IBAction func addPressed(_ sender: roundButton)
    {
        
    }
    
    @IBAction func subtractPressed(_ sender: roundButton)
    {
        
    }
    
    @IBAction func multiplyPressed(_ sender: roundButton)
    {
        
    }
    
    @IBAction func dividePressed(_ sender: roundButton)
    {
        
    }
    
    @IBAction func percentPressed(_ sender: roundButton) {
    }
    
    @IBAction func pmPressed(_ sender: roundButton) {
    }
    
    
    
}

