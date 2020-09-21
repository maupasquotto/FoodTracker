//
//  ViewController.swift
//  FoodTracker
//
//  Created by mauricio.pasquotto on 19/09/20.
//  Copyright © 2020 Mauricio Pasquotto. All rights reserved.
//

import UIKit

class MainStoryontroller: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }
    
    //MARK: Action
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }

    //MARK: UITextFieldDelegate
    @IBAction func selectImageFromPhotoLibrary(_ sender: UIGestureRecognizer) {
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
}

