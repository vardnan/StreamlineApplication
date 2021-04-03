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
        
        
        oneButton.setImage(UIImage(named: "1_Button_True.svg"), for: .normal)
        
        TodoTableView.delegate = self
        TodoTableView.dataSource = self
        
    }
    
    // Initial variables
    
    var oneButtonStatus:Bool = true
    var twoButtonStatus:Bool = false
    var threeButtonStatus:Bool = false
    var fourButtonStatus:Bool = false
    var todos = ["One", "Two", "Three"]
    var checkmarkCount = 0
    
    // Outlets
    
    
    @IBOutlet weak var TodoTableView: UITableView!
    
    @IBOutlet weak var listTitle: UILabel!
    
    @IBOutlet weak var oneButton: UIButton!
    
    @IBOutlet weak var twoButton: UIButton!
    
    @IBOutlet weak var threeButton: UIButton!
    
    @IBOutlet weak var fourButton: UIButton!
    
    @IBOutlet weak var addButton: UIButton!
    
        // Status update of navigation buttons
    
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
        
        var textField = UITextField()
        let alert = UIAlertController(title: "Add new task", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add task", style: .default) { (action) in
            
            // Action when alert button is pressed
            self.todos.append(textField.text!)
            
            self.TodoTableView.reloadData()
    
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new task"
            textField = alertTextField
        }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
}

//MARK — UITableView methods

extension ListView: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            checkmarkCount = 0
        }
        
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            checkmarkCount = 1

        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.tintColor = UIColor(red: 0.333, green: 0.333, blue: 0.333, alpha: 1)
        
        cell.textLabel?.text = todos[indexPath.row]
        
        
       /* let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: (cell.textLabel?.text)!)
        
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 3, range: NSMakeRange(0, attributeString.length))
        
        if checkmarkCount == 1 {

            cell.textLabel?.attributedText = attributeString
        } */
        
        
        
        return cell
    }
    
}

