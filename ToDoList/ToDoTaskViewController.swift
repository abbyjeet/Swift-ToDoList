//
//  ToDoTaskViewController.swift
//  ToDoList
//
//  Created by Abhijit on 15/07/2014.
//  Copyright (c) 2014 Abhijit. All rights reserved.
//

import UIKit

class ToDoTaskViewController:UIViewController{
    @IBOutlet var TaskName:UITextField!         //UpperCamelCase
    @IBOutlet var TaskDescription:UITextView!   //UpperCamelCase
    //var taskName:String?                        //lowerCamelCase }-- doesn't work
    //var taskDescription:String?                 //lowerCamelCase }-- doesn't work
    var tAskName:String?                        //cUstomCamelCase }-- works
    var tAskDescription:String?                 //cUstomCamelCase }-- works
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        TaskDescription.layer.borderColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 0.50).CGColor
        TaskDescription.layer.backgroundColor = UIColor.clearColor().CGColor
        TaskDescription.layer.borderWidth = 1
        TaskDescription.layer.cornerRadius = 5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TaskName.text = tAskName
        TaskDescription.text = tAskDescription
    }
    
    //*** How to go back to previous ViewController ***//
    //Is your view in a navigation controller? If so, use:
    //[self.navigationController popViewControllerAnimated:YES];
    
    //If it's a modal view controller, use:
    //[self dismissModalViewControllerAnimated:YES];
    
//    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
//        if(segue.identifier == "TaskListView"){
//                
//        }
//    }
    
    @IBAction func Save_Tapped(sender : UIButton) {
        self.navigationController.popViewControllerAnimated(true)
    }
}
