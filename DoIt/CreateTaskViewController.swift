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
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnAdd(_ sender: AnyObject) {
        //create task using outlet information 
        let task = Task()
        task.name = txtName.text!
        task.important = switchImportant.isOn
        
        //add information to array in last vc
        previousVC.tasks.append(task)
        
        previousVC.tblView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
