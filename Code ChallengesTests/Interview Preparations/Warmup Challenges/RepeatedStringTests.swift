//
//  RepeatedStringTests.swift
//  Code ChallengesTests
//
//  Created by Krunal on 21/03/22.
//

import XCTest
@testable import Code_Challenges

class RepeatedStringTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCase1() throws {
        let s = "abcac"
        let n = 10
        let expectedOutput = 4

        XCTAssertTrue(repeatedString(s: s, n: n) == expectedOutput)
        XCTAssertFalse(repeatedString(s: s, n: n) != expectedOutput)
    }

    func testCase2() throws {
        let s = "aba"
        let n = 10
        let expectedOutput = 7

        XCTAssertTrue(repeatedString(s: s, n: n) == expectedOutput)
        XCTAssertFalse(repeatedString(s: s, n: n) != expectedOutput)
    }

    func testCase3() throws {
        let s = "a"
        let n = 1000000000000
        let expectedOutput = 1000000000000

        XCTAssertTrue(repeatedString(s: s, n: n) == expectedOutput)
        XCTAssertFalse(repeatedString(s: s, n: n) != expectedOutput)
    }

    func testCase4() throws {
        let s = "absosl"
        let n = 1000000000000
        let expectedOutput = 166666666667

        XCTAssertTrue(repeatedString(s: s, n: n) == expectedOutput)
        XCTAssertFalse(repeatedString(s: s, n: n) != expectedOutput)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
