import Foundation

struct StoryBrain {
    let stories = [Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
                   Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
                   Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")]

    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) {
        if (userChoice == "Take a left.") {
            storyNumber = 1
        }
        if (userChoice == "Take a right.") {
            storyNumber = 2
        }
    }
}
