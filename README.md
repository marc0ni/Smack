# Smack -- Chat App
This is a project I wrote under the instruction of the Udemy online course "iOS 11 & Swift 4: From Beginner to Paid Professional". This project was coded during the weeks leading up to the release of XCode 9, and then after its final release; the video instructions themselves were recorded in July 2017. As a result, much of what I was learning had been deprecated or was being deprecated while I was learning. In practical terms that meant I was learning to think *beyond* the lessons themselves as I completed the work.

Following is what I learned:

BEST PRACTICES for USING GIT AS A PROFESSIONAL TOOL
The technique I learned could best be identified as a "Master/Developer/Work" workflow, summarized as follows:

1. Initiate the project in Master -- here I imported assets and supporting files while also installing pods.
2. Extend a Developer Branch -- in its inital state, Developer replicated everything that was already in the Master branch. The first purpose of the Developer branch was to isolate the Master branch from faulty code. Its secondary purpose as to provide a "clean" state of the code to share with the work branches. Its tertiary purpose was to provide me a place to leave notes for myself in the Comments, notes which would later be excluded from the Master branch.
3. Extend Work branches -- these were the branches that were extended from the Developer branch and used add new features to the app. As each work branch reached a "final" state (i.e. worked successfully using clean, compact code), that branch would be merged back into the Developer branch.
4. Finalize project -- after all the Work branches had been merged with the Developer branch, the Developer was then merged into the Master branch.
