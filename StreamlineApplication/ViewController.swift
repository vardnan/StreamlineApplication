//
//  ViewController.swift
//  StreamlineApplication
//
//  Created by Vardnan on 07/03/2021.
//

import UIKit

class ViewController: UIViewController {
    

    @IBAction func importantUrgant_Button(_ sender: UIButton) {
        performSegue(withIdentifier: "segueToListView", sender: nil)
    }
    
    
    @IBAction func importantNotUrgent_Button(_ sender: UIButton) {
        performSegue(withIdentifier: "segueToListView", sender: nil)
    }
    
    
    @IBAction func notImportantNotUrgent_Button(_ sender: UIButton) {
        performSegue(withIdentifier: "segueToListView", sender: nil)
    }
    
    @IBAction func notImportantUrgent_Button(_ sender: UIButton) {
        performSegue(withIdentifier: "segueToListView", sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

