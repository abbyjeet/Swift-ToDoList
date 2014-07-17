//
//  ToDoListTests.swift
//  ToDoListTests
//
//  Created by Abhijit on 13/07/2014.
//  Copyright (c) 2014 Abhijit. All rights reserved.
//

import XCTest
import ToDoList

class ToDoListTests: XCTestCase {

    var testToDo:ToDoManagerCore = ToDoManagerCore()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAddTask() {
        testToDo.AddTask("Task 1", taskDescription: "Description 1")
        
        // This is an example of a functional test case.
        //println("test begins...")
        XCTAssert(testToDo.toDoList.count > 0, "Fail: Total Tasks \(testToDo.toDoList.count)")
        //println("test ends...")
    }
    
    func testUpdateTask() {
        testToDo.AddTask("Task 1", taskDescription: "Description 1") //Add
        println("\noriginal: \(testToDo.toDoList[0])")
        testToDo.UpdateTask(0, taskName: "Task 11", taskDescription: "Description 11")
        
        
        // This is an example of a functional test case.
        println("test begins...")
        XCTAssert(testToDo.toDoList[0].0 == "Task 11", "Fail: Actual TaskName \(testToDo.toDoList[0].0)")
        println("modified: \(testToDo.toDoList[0])")
        println("test ends...")
    }
    
    func testDeleteTask(){
        testToDo.AddTask("Task 1", taskDescription: "Description 1") //Add
        println("\nTotal Tasks (before deleting): \(testToDo.toDoList.count)")
        
        println("test begins...")
        testToDo.DeleteTask(0)
        XCTAssert(testToDo.toDoList.count == 0, "Fail: Total Tasks \(testToDo.toDoList.count)")
        println("Total Tasks (after deleting):  \(testToDo.toDoList.count)")
        println("test ends...")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
