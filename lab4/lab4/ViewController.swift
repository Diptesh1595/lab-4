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
    }
    
    @IBAction func decline(_ sender: UIButton) {
        firstName.text = ""
        surname.text = ""
        city.text = ""
        address.text = ""
        dateOfBirth.text = ""
        mylabel.text = "user has declined"
        
    }
    
    @IBAction func accept(_ sender: UIButton) {
        if firstName.text == "" || surname.text == "" || city.text == "" || address.text == "" || dateOfBirth.text == "" {
            mylabel.text = " Fill the field."
        }
        else {
            let dateFormater = DateFormatter()
            dateFormater.dateFormat = "MM/dd/yyyy"
            let birthDate = dateFormater.date(from: dateOfBirth.text!)
            
            let calender = Calendar.current
            let age = calender.dateComponents([.year], from: birthDate!, to: Date())
            
            print(age.year)
        }
    }
}
