//
//  Created by Michael on 2018/10/28.
//

import XCTest

import TennisKata

class ScoringTests: XCTestCase {

    func testThatANewGameStartsWithAPlayerOne() {
        // GIVEN
        let game = Game()

        // WHEN
        // THEN
        XCTAssertNotNil(game.playerOne)
    }

    func testThatANewGameStartsWithAPlayerTwo() {
        // GIVEN
        let game = Game()

        // WHEN
        // THEN
        XCTAssertNotNil(game.playerTwo)
    }

    func testThatANewGameStartsWithPlayersOneOn0Point() {
        // GIVEN
        let game = Game()

        // WHEN
        // THEN
        XCTAssertEqual(game.playerOne.score, 0)
    }

    func testThatANewGameStartsWithPlayersTwoOn0Point() {
        // GIVEN
        let game = Game()

        // WHEN
        // THEN
        XCTAssertEqual(game.playerTwo.score, 0)
    }
}
