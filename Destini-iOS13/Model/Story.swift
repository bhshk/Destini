import Foundation

struct Story {
    var page: String
    
    var choice1: String
    var choice1Destination: Int
    
    var choice2: String
    var choice2Destination: Int

    
    init(page: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        self.page = page
        self.choice1 = choice1
        self.choice2 = choice2
        self.choice1Destination = choice1Destination
        self.choice2Destination = choice2Destination
    }
}
