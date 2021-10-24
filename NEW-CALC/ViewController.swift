/*
 *Program Name: Basic Calculator
 *Date Last Modified: 03/10/2021
 *Description: A simple Calculator app to perform basic binary operations such ad addition, subtraction, etc. using logic.
 *Revision History: Added the Funtionalities for the various operator buttons in the calculator.
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

//creating an enum for all the operations
enum Operation:String
{
    case Add = "+"
    case Subtract = "-"
    case Divide = "/"
    case Multiply = "*"
    case NULL = "Null"
    case Percent = "%"
    case pm = "+/-"
}

class ViewController: UIViewController
{

    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var outputLabel2: UILabel!
    
    //initializing the various parts of the operation
    var runningNumber = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""
    var currentOperation:Operation = .NULL
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //setting default value of Display text
        outputLabel.text = "0"
        outputLabel2.text = "0"
        
        
    }

    //created the number pressed function
    @IBAction func numberPressed(_ sender: roundButton)
    {
        if runningNumber.count <= 8
        {
            //takes the assingned tag on each nuber and stores in runningnumber
            runningNumber += "\(sender.tag)"
            outputLabel.text = runningNumber
            outputLabel2.text = runningNumber
        }
    }
    
    //defines funtion for all clear pressed
    @IBAction func allClearPressed(_ sender: roundButton)
    {
        runningNumber = ""
        leftValue = ""
        rightValue = ""
        result = ""
        currentOperation = .NULL
        outputLabel.text = "0"
        outputLabel2.text = "0"
    }
    
    //defines funtion for back button pressed
    @IBAction func clearPressed(_ sender: roundButton)
    {
        runningNumber = String(runningNumber.dropLast())
        outputLabel.text = runningNumber
        outputLabel2.text = runningNumber
        if runningNumber.isEmpty
        {
            outputLabel.text = "0"
            outputLabel2.text = "0"
        }
    }
    
    //defines funtion for dot pressed
    @IBAction func dotPressed(_ sender: roundButton)
    {
        //set a constraint for 7 figures before the decimal to allow figures after
        if runningNumber.count <= 7
        {
            runningNumber += "."
            outputLabel.text = runningNumber
            outputLabel2.text = runningNumber
        }
    }
    
    //defines funtion for equal pressed
    @IBAction func equalPressed(_ sender: roundButton)
    {
        operation(operation: currentOperation)
    }
    
    //defines funtion for add pressed
    @IBAction func addPressed(_ sender: roundButton)
    {
        operation(operation: .Add)
    }
    
    //defines funtion for subtract pressed
    @IBAction func subtractPressed(_ sender: roundButton)
    {
        operation(operation: .Subtract)
    }
    
    //defines funtion for multiply pressed
    @IBAction func multiplyPressed(_ sender: roundButton)
    {
        operation(operation: .Multiply)
    }
    
    //defines funtion for divide pressed
    @IBAction func dividePressed(_ sender: roundButton)
    {
        operation(operation: .Divide)
    }
    
    //defines funtion for percent pressed
    @IBAction func percentPressed(_ sender: roundButton)
    {
        operation(operation: .Percent)
    }
    
    //defines funtion for plusminus pressed
    @IBAction func pmPressed(_ sender: roundButton)
    {
        operation(operation: .pm)
    }
    
    func operation(operation: Operation)
    {
        if currentOperation != .NULL
        {
            if runningNumber != ""
            {
                rightValue = runningNumber
                runningNumber = ""
                
                //here the logic for the different operations is set
                if currentOperation == .Add
                {
                    result = "\(Double(leftValue)! + Double(rightValue)!)"
                }else if currentOperation == .Subtract{
                    result = "\(Double(leftValue)! - Double(rightValue)!)"
                }else if currentOperation == .Multiply{
                    result = "\(Double(leftValue)! * Double(rightValue)!)"
                }else if currentOperation == .Divide{
                    result = "\(Double(leftValue)! / Double(rightValue)!)"
                }else if currentOperation == .Percent{
                    result = "\( (Double(leftValue)! * 0.01))"
                }else if currentOperation == .pm{
                    
                    result = "\(-Double(leftValue)!)"
                }
                leftValue = result
                
                //turns a decimal number into an integer if divisible by 1 and result returned is 0
                if (Double(result)!.truncatingRemainder(dividingBy: 1) == 0)
                {
                    result = "\(Int(Double(result)!))"
                }
                outputLabel.text = result
                outputLabel2.text = result
            }
            currentOperation = operation
            
        }
        //else statement for a null operation
        else{
            leftValue = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
    }
    
}


