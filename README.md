# Smack -- Chat App
This is a project I have been coding under the instruction of the Udemy online course <i>iOS 11 & Swift 4: From Beginner to Paid Professional</i>. 

This project was coded during the weeks leading up to the release of XCode 9, and then after its final release; the video instructions themselves were recorded in July 2017. As a result, much of what I was learning had been/was being deprecated while I was learning. In practical terms that meant I was learning to think *beyond* the lessons themselves as I completed the work just to bridge the gap.

The following is what I learned:

<b>BEST PRACTICES FOR USING GIT AS A PROFESSIONAL TOOL</b><br>
The technique I learned could best be described as a "Master/Developer/Work" workflow, summarized as follows:

	1. Initiate the project in Master -- here I imported assets and supporting files while also installing pods.

	2. Extend a Developer Branch -- in its inital state, the Developer branch replicated everything that was already in the Master branch. Beyond that, the first purpose of the Developer branch was to isolate the Master branch from faulty code. Its secondary purpose was to provide a "clean" state of the code to share with the work branches that sprang from it. And for me, its tertiary purpose was to provide a place to leave notes for myself in the Comments, notes which would later be excluded from the Master branch.

	3. Extend Work branches -- these were the branches that came separately from the Developer branch and were used to add new features to the app. As each work branch reached a "final" state (i.e. worked successfully using clean, compact code), that branch would then be merged back into the Developer branch.

	4. Finalize project (TBD) -- after all of the Work branches are finally merged with the Developer branch, the Developer will then be merged into the Master branch.

<b>ADDING COCOAPODS PODS (LIBRARIES) TO INCREASE FUNCTIONALITY</b><br>
This app makes extensive use of four Cocoapods pods: Alamofire (for POSTing web requests and GETting web responses), SwiftyJSON (for parsing JSON requests into Swift code), Socket.IO-Client-Swift (for making socket connections) and Starscream (supplements the previous pod). 

The SwiftyJSON pod was the reason I needed to keep Commented notes in the Developer branch. SwiftyJSON streamlines the process of parsing  JSON, but it's kind of a "black box" in the way it handles input data; SwiftyJSON's parameters are much simpler and less descriptive than the parameters usually used in JSON parsing. So in order to keep those usual parameters available for study, I've commented them out on the Developer branch. (The reason I've continued using SwiftyJSON in the first place is because this particular pod makes XCode's "do/try/catch" error handling so much easier to implement.)

<b>USING A HOSTING API AND A DATABASE</b><br>
Since Smack is a web app it was necessary for me to establish an account with Heroku for hosting the server. For this app I installed Node.JS on the hosting server, using it in conjunction with mLab's database. These components comprised the server side of Smack which responded to these calls:

	1. Registering a user	
	2. Logging in a user	
	3. Providing channel
	4. Providing sockets
	5. Fetching messages
	6. Sending messages
  
 <b>GROUPING FILES BY PURPOSE</b><br>
 Besides the usual Model, View, and Controller groups, the app also groups files by their purpose. To that end there are these other groups:
 
 	1. Services -- these files work in conjunction with the Cocoapod libraries mentioned above to 
		(a) Authorize users on the app
		(b) Organize users' data while they use the app
		(c) Handle messages
		(d) Maintain the socket once a user has been logged in
		
	2. Utilities -- this folder consists of a single file holding all of the constants used in the app. The constants fall into these 			categories:
		(a) URLs -- used for interacting with the server
		(b) Colors -- an accent color used throughout the UI
		(c) Notifications -- used to communicate changes-of-state within the app
		(d) Segues -- simplified the transitions between VCs, especially for the modals and for unwinding
		(e) User defaults -- also used for interacting with the server
		(f) Headers -- used as part of the URLs
		
<b>COMPLETION HANDLERS</b><br>
  





