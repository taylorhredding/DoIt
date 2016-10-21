//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Taylor Redding on 10/20/16.
//  Copyright © 2016 Taylor Redding. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task = Task()
    
    @IBOutlet weak var lblComplete: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblComplete.text = task.name

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnComplete(_ sender: AnyObject) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
