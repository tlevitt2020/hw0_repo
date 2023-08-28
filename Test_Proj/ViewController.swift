//
//  ViewController.swift
//  Test_Proj
//
//  Created by Thomas Levitt on 8/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fNameText: UITextField!
    @IBOutlet weak var LNameText: UITextField!
    @IBOutlet weak var schoolText: UITextField!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var numPets: UILabel!
    @IBOutlet weak var numPetsStepper: UIStepper!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        
        numPets.text = "\(Int(sender.value))"
    }
    
    @IBAction func introDidTap(_ sender: UIButton) {
        
        // choosing the title from segmented control
        // first, second, third, or fourth
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        
        // Creating constant string that holds introduction
        let introduction = "My name is \(fNameText.text!) \(LNameText.text!) and I attend \(schoolText.text!). I am currently in my \(year!) year and I own \(numPets.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        // Create an alert which includes introduction
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // Allow a way to dismiss box
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Pass action to aalert controller to dismiss
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

