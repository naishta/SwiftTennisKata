import Foundation

public final class Player {
    public var score: String = "0"
    public var points: String!
    public var playerOneScore: String = "0"

    public init() { }

    public func scores(point: String) -> String {

        switch point {
        case "first":
            points = "15"
        case "second":
            points = "30"
        default:
            points = "0"
        }
//        points = points + point
        return points
    }

    public func getScores(for player: String) -> String {
        return ""
    }

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
