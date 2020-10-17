class Model {
    var gameWon = false
    var guesses = [Int]()
    var secretNumber = Int.random(in: 1...100)
    
    func resetModel() {
        guesses = [Int]()
        secretNumber = Int.random(in: 1...100)
    }
}
