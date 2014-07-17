//
//  ToDoListViewController.swift
//  ToDoList
//
//  Created by Abhijit on 15/07/2014.
//  Copyright (c) 2014 Abhijit. All rights reserved.
//

import UIKit

class ToDoListViewController:UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet var TaskListView : UITableView = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       m_ToDoListManager.AddTask("Task 1", taskDescription: "Desc 1")
       m_ToDoListManager.AddTask("Task 2", taskDescription: "Desc 2")
    }
    
    override func viewWillAppear(animated: Bool) {
        //To Refresh the list
//        TaskListView.reloadData()
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return m_ToDoListManager.toDoList.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let (task,desc) = m_ToDoListManager.toDoList[indexPath.row]
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        cell.textLabel.text = task
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if(segue.identifier == "TaskListSegue"){
            let detailViewController = segue.destinationViewController as ToDoTaskViewController
            let (task, desc) = m_ToDoListManager.GetTask(TaskListView.indexPathForSelectedRow().row)
            println("selected \(task) \(desc)")
            detailViewController.tAskName = task
            detailViewController.tAskDescription = desc
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}