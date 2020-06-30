import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        storyBrain.resetProgress()
        updateUI()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextPage(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    
    func updateUI() {
        storyLabel.text = storyBrain.storybook[storyBrain.pageNumber].page
        choice1Button.setTitle(storyBrain.storybook[storyBrain.pageNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.storybook[storyBrain.pageNumber].choice2, for: .normal)
        
    }
    
    
}
