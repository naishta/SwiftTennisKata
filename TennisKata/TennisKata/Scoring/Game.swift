//
//  Copyright © 2018 NaMi. All rights reserved.
//

import Foundation

public struct Player {
    public let score: Int = 0

    public init() { }
}

public struct Game {
    public let playerOne = Player()
    public let playerTwo = Player()

    public init() { }
}
