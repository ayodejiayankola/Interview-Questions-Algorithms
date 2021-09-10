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
