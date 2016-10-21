//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Taylor Redding on 10/20/16.
//  Copyright © 2016 Taylor Redding. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task : Task? = nil
    
    @IBOutlet weak var lblComplete: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important {
            lblComplete.text = "❗️\(task!.name!)"
        } else {
            lblComplete.text = task!.name!
        }
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnComplete(_ sender: AnyObject) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
        
    }

}
