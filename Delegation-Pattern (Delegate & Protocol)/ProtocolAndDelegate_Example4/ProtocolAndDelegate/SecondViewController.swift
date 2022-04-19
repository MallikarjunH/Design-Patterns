//
//  SecondViewController.swift
//  ProtocolAndDelegate
//
//  Created by mallikarjun on 31/12/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

@objc protocol DataPass {
    
    func dataPassing(name:String, age:String, city:String)
    
    @objc optional func dataPassing2OptionalMethod(printSomeString:String) //optional Method
}

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    var delegate:DataPass!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveButtonClicked(_ sender: Any) {
    
        delegate.dataPassing(name: nameTextField.text ?? "0", age: ageTextField.text ?? "0", city: cityTextField.text ?? "0")
        delegate.dataPassing2OptionalMethod?(printSomeString: "I am from Optional Protocoal Method")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }

}
