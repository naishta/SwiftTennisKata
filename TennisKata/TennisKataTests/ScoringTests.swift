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

//    func testWhenPlayerOneScoresFirstPoint() {
//        let game = Game()
//        game.playerOne.scores()
//        XCTAssertEqual(game.playerOne.score, "15")
//        XCTAssertEqual(game.playerTwo.score, "0")
//    }
//
//    func testWhenPlayerTwoScoresFirstPoint() {
//        let game = Game()
//        game.playerTwo.scores()
//        XCTAssertEqual(game.playerTwo.score, "15")
//        XCTAssertEqual(game.playerOne.score, "0")
//    }

    func testWhenPlayerOneScoresFirstPoint() {
        let game = Game()
        let point = "first"
        let points = game.playerOne.scores(point: point)
        XCTAssertEqual(points, "15")
        XCTAssertEqual(game.playerTwo.score, "0")
    }

    func testWhenPlayerOneScoresSecondPoint() {
        let game = Game()
        let point = "second"
        let points = game.playerOne.scores(point: point)
        XCTAssertEqual(points, "30")
        XCTAssertEqual(game.playerTwo.score, "0")
    }

    //TODO: Modify this to use getScores
    func testWhenPlayerTwoScoresFirstPointWhenPlayerOneHas30Points() {
        let game = Game()
        let point = "first"
        let playerTwoPoints = game.playerTwo.scores(point: point)
        game.playerOne.score = "30"
        XCTAssertEqual(playerTwoPoints, "15")
        XCTAssertEqual(game.playerOne.score, "30")
    }

    //TODO: Modify this to use getScores and remove hardcoding
    func testWhenPlayerTwoScoresSecondPointWhenPlayerOneHas30Points() {
        let game = Game()
        let point = "second"
        let playerTwoPoints = game.playerTwo.scores(point: point)
//        let playerOnePoints = game.playerOne.getScores
        game.playerOne.score = "30"
        XCTAssertEqual(playerTwoPoints, "30")
        XCTAssertEqual(game.playerOne.score, "30")
    }
    
}
