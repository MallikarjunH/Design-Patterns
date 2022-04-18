import UIKit
import Foundation

var greeting = "Hello, playground"

/*
 Singleton/Singletone Pattern -The singleton pattern guarantees that only one instance of a class is instantiated

 There are times that you want to make sure only one instance of a class is instantiated and that your application only uses that instance. That's the primary and only goal of the singleton pattern.
*/

//__________________________________________________________________________________
//Here the one simple example of using class

class LocationManager {
    
    func requestForPermission() {
        print("Permission Granted")
    }
}
//Now generally we will create class object and access its properties
let location = LocationManager() //initialization class
location.requestForPermission() //call function here

//This is the class without a singleton pattern for access to any function we need to initialize class every time for avoiding these things we are using singleton classes with the static instance.
//____________________________________________________________________________________

//Write Singleton Class

class LocationManager2 {
    
    static let shared = LocationManager2()
    
   // init() { } // poor way of writing Singleton class - from this still u can instantiate
    private init() { } //A better way to write your Singleton class - correct way
    
    func printSomeData() {
        print("I am from LocationManager2 class")
    }
}

//let testObj = LocationManager2() //'LocationManager2' initializer is inaccessible due to 'private' protection level - if you wrote like -> private init() { }
//testObj.printSomeData()

//In a single line you can access easily
LocationManager2.shared.printSomeData()

//_______________________________________________________________________________

//Note 1 - Every class having default public initializer, its change to now private. Now you can’t initialize your singleton class again.

//Note 2 - If you using more Singleton patterns inside your projects it’s hard to manage the lifecycle of your Singleton class. Also, it maintains a global mutable shared state. Try to avoid overuse of Singleton pattern better to use dependency injection.

//______________________________________________________________________________
