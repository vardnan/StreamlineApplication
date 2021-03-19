//
//  ViewController.swift
//  StreamlineApplication
//
//  Created by Vardnan on 07/03/2021.
//

import UIKit

class ListView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        oneButton.setImage(UIImage(named: "1_Button_True.svg"), for: .normal)
        
    }
    
    var oneButtonStatus:Bool = true
    var twoButtonStatus:Bool = false
    var threeButtonStatus:Bool = false
    var fourButtonStatus:Bool = false
    
    // Outlets
    
    @IBOutlet weak var listTitle: UILabel!
    
    @IBOutlet weak var oneButton: UIButton!
    
    @IBOutlet weak var twoButton: UIButton!
    
    @IBOutlet weak var threeButton: UIButton!
    
    @IBOutlet weak var fourButton: UIButton!
    
    @IBOutlet weak var addButton: UIButton!
    
    
    func buttonStatusUpdate() {
        
        if oneButtonStatus == false {
            oneButton.setImage(UIImage(named: "1_Button_False.svg"), for: .normal)
            
        }
        
        if oneButtonStatus == true {
            oneButton.setImage(UIImage(named: "1_Button_True.svg"), for: .normal)
        }
        
        if twoButtonStatus == false {
            twoButton.setImage(UIImage(named: "2_Button_False.svg"), for: .normal)
            
        }
        
        if twoButtonStatus == true {
            twoButton.setImage(UIImage(named: "2_Button_True.svg"), for: .normal)
        }
        
        if threeButtonStatus == false {
            threeButton.setImage(UIImage(named: "3_Button_False.svg"), for: .normal)
        }
        
        if threeButtonStatus == true {
            threeButton.setImage(UIImage(named: "3_Button_True.svg"), for: .normal)
        }
        
        if fourButtonStatus == false {
            fourButton.setImage(UIImage(named: "4_Button_False.svg"), for: .normal)
        }
        
        if fourButtonStatus == true {
            fourButton.setImage(UIImage(named: "4_Button_True.svg"), for: .normal)
        }
    }
    
    // Actions
    
    
    @IBAction func oneButtonPressed(_ sender: UIButton) {
        
        oneButtonStatus = true
        twoButtonStatus = false
        threeButtonStatus = false
        fourButtonStatus = false
       
        buttonStatusUpdate()
        
    
        
    }
    
    @IBAction func twoButtonPressed(_ sender: UIButton) {
        
        
        oneButtonStatus = false
        twoButtonStatus = true
        threeButtonStatus = false
        fourButtonStatus = false
        
        buttonStatusUpdate()
        
        
    }
    
    
    @IBAction func threeButtonPressed(_ sender: UIButton) {
        
        oneButtonStatus = false
        twoButtonStatus = false
        threeButtonStatus = true
        fourButtonStatus = false
       
        buttonStatusUpdate()
        
    }
    
    
    @IBAction func fourButtonPressed(_ sender: UIButton) {
        
        oneButtonStatus = false
        twoButtonStatus = false
        threeButtonStatus = false
        fourButtonStatus = true
       
        buttonStatusUpdate()
        
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        
    }
    
}

