//
//  ViewController.swift
//  JAAK-EntrevistaTecnica
//
//  Created by Lydia Marion on 19/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func isPrimeNumber(_ number: Int) -> Bool {
        return number > 1 && !(2..<number).contains { number % $0 == 0 }
    }

    @IBAction func isPrimeNumber_Pressed(_ sender: Any) {
        let number = Int(numberTextField.text ?? "") ?? 0
        
        if isPrimeNumber(number) {
            resultLabel.text = "Is prime number"
        } else {
            resultLabel.text = "Is not prime number"
        }
    }
}

