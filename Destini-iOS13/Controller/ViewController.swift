
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let stories = [Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
                   Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
                   Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")]
    
    var storyNumber = 0
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if (sender.currentTitle == "Take a left.") {
            storyNumber = 1
            updateUI()
        }
        if (sender.currentTitle == "Take a right.") {
            storyNumber = 2
            updateUI()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = stories[storyNumber].title
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = stories[storyNumber].title
        choice1Button.setTitle(stories[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(stories[storyNumber].choice2, for: .normal)
    }

}

