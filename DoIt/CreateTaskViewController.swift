//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Taylor Redding on 10/20/16.
//  Copyright © 2016 Taylor Redding. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var switchImportant: UISwitch!
    @IBOutlet weak var txtName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnAdd(_ sender: AnyObject) {
        //create task using outlet information 
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = txtName.text!
        task.important = switchImportant.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //return to prevVC
        navigationController!.popViewController(animated: true) 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
