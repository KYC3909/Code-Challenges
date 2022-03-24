//
//  ArrayManipulationTests.swift
//  Code ChallengesTests
//
//  Created by Krunal on 24/03/22.
//

import XCTest
@testable import Code_Challenges

class ArrayManipulationTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCase1() throws {
        // This is an example of a functional test case.
        let n = 10000000
        let q = [[1,5,3], [4,8,7], [6,9,1]]
        let expectedOutput = 10
        
        XCTAssertTrue(arrayManipulation(n: n, queries: q) == expectedOutput)
        XCTAssertFalse(arrayManipulation(n: n, queries: q) != expectedOutput)
    }

    func testCase2() throws {
        // This is an example of a functional test case.
        let n = 5
        let q = [[1,2,100], [2,5,100], [3,4,100]]
        let expectedOutput = 200
        
        XCTAssertTrue(arrayManipulation(n: n, queries: q) == expectedOutput)
        XCTAssertFalse(arrayManipulation(n: n, queries: q) != expectedOutput)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
