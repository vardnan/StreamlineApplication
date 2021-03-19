//
//  ViewController.swift
//  StreamlineApplication
//
//  Created by Vardnan on 07/03/2021.
//

import UIKit

class ViewController: UIViewController {
    

    @IBAction func importantUrgant_Button(_ sender: UIButton) {
        performSegue(withIdentifier: "importantUrgentSegue", sender: nil)
    }
    
    
    @IBAction func importantNotUrgent_Button(_ sender: UIButton) {
    
    }
    
    
    @IBAction func notImportantNotUrgent_Button(_ sender: UIButton) {
    }
    
    @IBAction func notImportantUrgent_Button(_ sender: UIButton) {
    }
    
    
    @IBOutlet weak var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

