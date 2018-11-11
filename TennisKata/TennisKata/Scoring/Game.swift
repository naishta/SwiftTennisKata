import Foundation

public struct Player {
    public var score: String = "0"

    public init() { }

}

public struct Game {
    public var playerOne = Player()
    public let playerTwo = Player()

    public init() { }

    public func valid(score: String) -> Bool {
        switch score {
        case "0":
            return true
        case "15":
            return true
        case "30":
            return true
        case "40":
            return true
        case "Game":
            return true
        default:
            return false
        }
    }
}
