//
//  ViewController.swift
//  lab4
//
//  Created by user252703 on 5/31/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var surname: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var dateOfBirth: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reset(_ sender: UIButton) {
        firstName.text = ""
        surname.text = ""
        city.text = ""
        address.text = ""
        dateOfBirth.text = ""
        textView.text = ""
        mylabel.text = "Please fill the form"
    }
    
    @IBAction func decline(_ sender: UIButton) {
        firstName.text = ""
        surname.text = ""
        city.text = ""
        address.text = ""
        dateOfBirth.text = ""
        mylabel.text = "user has declined"
        textView.text = ""
    }
    
    @IBAction func accept(_ sender: UIButton) {
        if firstName.text == "" || surname.text == "" || city.text == "" || address.text == "" || dateOfBirth.text == "" {
            mylabel.text = " Fill the field."
        }
        else {
            let dateFormater = DateFormatter()
            dateFormater.dateFormat = "dd/MM/yyyy"
            if let birthDate = dateFormater.date(from: dateOfBirth.text!) {
                let calender = Calendar.current
                let age = calender.dateComponents([.year], from: birthDate, to: Date())
                
                if (age.year ?? 0) >= 18 {
                    textView.text = "I, \(firstName.text!) \(surname.text!), currently living at \(address.text!) in the city of \(city.text!) do hereby accept the terms and conditions assignment.\n\nI am \(age.year ?? 0) and therefore able to accept the terms and conditions of this assignment"
                    mylabel.text = "You successfully accepted this terms and conditions"
                } else {
                    mylabel.text = "You are not eligible to accept the terms and condition as you are under 18!"
                }
            } else {
                mylabel.text = "Please enter valid birthdate in formate of dd/mm/yyyy"
            }
        }
    }
}
