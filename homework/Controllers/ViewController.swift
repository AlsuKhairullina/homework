//
//  ViewController.swift
//  homework
//
//  Created by Алсу Хайруллина on 02.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    let username = "Admin"
    let password = "Admin"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInButton.layer.cornerRadius = 10
 
    }
    
    @IBAction func signInAction(_ sender: Any) {
        guard let username = usernameTextField.text,
              let password = passwordTextField.text else { return  }
        if username == self.username, password == self.password {
            signInButton.backgroundColor = UIColor.green
            let vc = storyboard?.instantiateViewController(identifier: "ListViewController")
            self.navigationController?.pushViewController(vc!, animated: true)
        }
        else { signInButton.backgroundColor = UIColor.red}
    }
    
}

