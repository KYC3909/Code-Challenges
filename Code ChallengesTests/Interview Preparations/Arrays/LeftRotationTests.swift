//
//  LeftRotationTests.swift
//  Code ChallengesTests
//
//  Created by Krunal on 21/03/22.
//

import XCTest
@testable import Code_Challenges

class LeftRotationTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCase1() throws {
        // This is an example of a functional test case.
        let d = 2
        let a = [10, 20, 20, 10, 10, 30, 50, 10, 20]
        let expectedOutput = [20, 10, 10, 30, 50, 10, 20, 10, 20]
        
        XCTAssertTrue(rotLeft(a: a, d: d) == expectedOutput)
        XCTAssertFalse(rotLeft(a: a, d: d) != expectedOutput)
        XCTAssertEqual(rotLeft(a: a, d: d), expectedOutput)
    }

    func testCase2() throws {
        // This is an example of a functional test case.
        let d = 4
        let a = [1 ,2 ,3 ,4,5]
        let expectedOutput = [5, 1, 2, 3, 4]
        
        XCTAssertTrue(rotLeft(a: a, d: d) == expectedOutput)
        XCTAssertFalse(rotLeft(a: a, d: d) != expectedOutput)
        XCTAssertEqual(rotLeft(a: a, d: d), expectedOutput)
    }

    func testCase3() throws {
        // This is an example of a functional test case.
        let d = 2
        let a = [1 ,2 ,3 ,4,5]
        let expectedOutput = [3, 4, 5, 1, 2]
        
        XCTAssertTrue(rotLeft(a: a, d: d) == expectedOutput)
        XCTAssertFalse(rotLeft(a: a, d: d) != expectedOutput)
        XCTAssertEqual(rotLeft(a: a, d: d), expectedOutput)
    }


    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
