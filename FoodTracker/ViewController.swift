//
//  ViewController.swift
//  FoodTracker
//
//  Created by Cooper Luetje on 9/20/16.
//
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks
        nameTextField.delegate = self
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        //Hide keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField)
    {
        mealNameLabel.text = textField.text
    }
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(sender: UIButton)
    {
        mealNameLabel.text = "Default Text"
    }
    
    
}

