import UIKit


//MARK:- UIVIEW CONTROLLER LIFE CYCLE Method
//They are called automatically
//Super.viewdidload - They are called automatically and it made the view inherit all properites of the uiviewcontroller
//Viewdidload - is called when content view is created in memory - This is what makess it sure that your iboutlet will surely have aa value so you can force unwrap [Always called once in an app life cycle ]
//3- ViewWillAppear - Called before content view is added to appView hierachy - just before it shows up on the screen [ it is always called after view did load , it is always called everytime the view comes on screen]
//4 - ViewDidAppear - Called after the contentview is added to the app view hierarchy [Animation is preparably done here]
//5 - ViewWillDisAppear - Called before the contentview is removed from app view hierarchy [saving form fields before closing]
//6 - ViewDidDisAppear - Called after the contentview is removed from app view hierarchy
//7 - ViewDidLayoutSubviews - called when the contentview bound change. but BEFORE it lays out its subviews [Rotating from potrait to landscape]
//8 - ViewWillLayoutSubviews - called when the contentview bound change. but AFTER it lays out its subviews [Rotating from potrait to landscape]


//MARK:- What to ask interviewers
//What is the company app technology stack -perctange of objective-c/ Swift ,,any plan for conversion and how soon Arcthecture, api type
//What technology do they use on the backend - opportunities to learn maybe 3 % of my time in order to have an overall understanding of the sytem
//The team - How big the team is , The experience level./Sperturm of the team mix team is important(learning and teaching)/Remote or hybrid or full in housse
//Career Growth - Like ios team lead(is promotion from within / external)
// Where the product is in its life cycle in order to prepare my mind on what i will be work on
// Code or storyboard - and the development practices they use to prevent pitfalls in it


// Final Interview
//- Talks aboutt a blog on their site/twitter feeds/ linkedin / tech guy on fasinating questions (in general intersting conversation
//Do research on ur interviewer before going into the interview
// Download the app - study it throughly , reversing engineering, ask questions around it
// Suggestions on how u will imporove things -from a user prespective or developers


//MARK:- fame is the position of a uiview relative to its super view - (x, y , w , h)
//Bounds - its position relative to its own coordinate - (0,0, w, h) - upper left

//MARK:- CONCURRENCY AND THREADING
//Concurrency is doing multiple task at the same time
//This tasks are executed on a thread
//Main thread is speeding and clean because that is where the ui task is performed on
//Time heavy task is done on the background thread to prevent freezing of ui
// Grand central Dispatch and NS Operations Queues - an api built on this threading to make work easier - handing all the heavy lifting of creating and managing thread for us.
//Queues - FIFO - First In First Out - Serial and concurrent queues
// 1 Serial Queue - Main
// 4 concurrent Queues - Background
//DispatchQueue.main.async {
//self.tableview.reloadData()
//}

// Background
//qos - quality of service
// DispatchQueue.global(qos: .background).async {
//code to run on background queue
//}


//MARK:-  Swift Optionals  - Unwrapping - Guard, If Let, Chaining, Force
// Optionals allows you to write flexible and more safer code
var optionalNumber: Int?
//optionalNumber = 25
// IF LET - Saftely unwrapping
if let number = optionalNumber {
    print("I have a value, it is \(number)")
} else {
    print("I am empty")
}

// GUARD - Provides an early exit out of the statement if nil
func tripleNumber(number: Int?) {
    guard let number = number else {
        print("Exiting Function")
        return
    }
    print("My tripled number is \(number * 3)")

}
tripleNumber(number: optionalNumber)


// FORCED UNWRAPPING -

// let forcedNumber = optionalNumber!




//OPTIONAL CHAINING - only use on object that has properties

struct Device {
    var type: String
    var price: Float
    var color: String
}


var myPhone: Device?
myPhone = Device(type: "Phonr", price: 756.0, color: "Red")
let devicePrice = myPhone?.price

if let devicePrice = devicePrice{
let total = devicePrice + 8.99
    print(total)

}
































