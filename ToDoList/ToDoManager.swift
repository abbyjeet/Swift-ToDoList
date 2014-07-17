//
//  ToDoManager.swift
//  ToDoList
//
//  Created by Abhijit on 13/07/2014.
//  Copyright (c) 2014 Abhijit. All rights reserved.
//

import Foundation

class ToDoManagerCore{
    
    var toDoList = Array<(String, String)>()
    
    func GetTask(Index:Int) -> (String, String){
        return toDoList[Index]
    }
    
    func AddTask(taskName:String, taskDescription:String){
        toDoList.append(taskName, taskDescription);
    }
    
    func UpdateTask(taskIndex:Int, taskName:String, taskDescription:String){
        toDoList[taskIndex] = (taskName, taskDescription)
    }
    
    func DeleteTask(taskIndex:Int){
        toDoList.removeAtIndex(taskIndex)
    }
    
    func PrintTasks(){
        for idx in 0...toDoList.count-1 {
            println("task:\(toDoList[idx])")
        }
    }
}