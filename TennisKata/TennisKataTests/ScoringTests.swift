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

    func testThatANewGameStartsWithPlayerOneOn0Point() {
        // GIVEN
        let game = Game()

        // WHEN
        // THEN
        XCTAssertEqual(game.playerOne.score, "0")
    }

    func testThatANewGameStartsWithPlayerTwoOn0Point() {
        // GIVEN
        let game = Game()

        // WHEN
        // THEN
        XCTAssertEqual(game.playerTwo.score, "0")
    }

    func testThatAGameCanHave0PointAsValidScore() {
        //Given
        let game = Game()

        //When
        //Then
        XCTAssertTrue(game.valid(score: "0"))
    }

    func testThatAGameCanHave15PointAsValidScore() {
        //Given
        let game = Game()

        //When
        //Then
        XCTAssertTrue(game.valid(score: "15"))
    }

    func testThatAGameCanHave30PointAsValidScore() {
        //Given
        let game = Game()

        //When
        //Then
        XCTAssertTrue(game.valid(score: "30"))
    }

    func testThatAGameCanHaveGamePointAsValidScore() {
        //Given
        let game = Game()

        //When
        //Then
        XCTAssertTrue(game.valid(score: "Game"))
    }

    func testThatAGameCannotHave16PointAsValidScore() {
        //Given
        let game = Game()

        //When
        //Then
        XCTAssertFalse(game.valid(score: "16"))
    }
}
