//
//  AddViewController.swift
//  SimpleTodoList
//
//  Created by 目黒将稔 on 2017/04/30.
//  Copyright © 2017年 Masatoshi Meguro. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    var t_array = [String]()

    @IBOutlet var taskField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }

    @IBAction func add(_ sender: Any) {
    
        if UserDefaults.standard.object(forKey: "task") != nil{
            
            t_array = UserDefaults.standard.object(forKey: "task") as! [String]
            
        }
        
        t_array.append(taskField.text!)
        
        UserDefaults.standard.set(t_array, forKey: "task")
        
        self.navigationController?.popViewController(animated: true)
    
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    
 
}
