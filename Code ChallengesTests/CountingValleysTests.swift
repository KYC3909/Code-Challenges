//
//  CountingValleysTests.swift
//  Code ChallengesTests
//
//  Created by Krunal on 19/03/22.
//

import XCTest
@testable import Code_Challenges

class CountingValleysTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCase1() throws {
        let path = "dduuuudd"
        let expectedOutput = 1
        
        XCTAssertTrue(countingValleys(steps: path.count, path: path) == expectedOutput)
        XCTAssertFalse(countingValleys(steps: path.count, path: path) != expectedOutput)
    }

    func testCase2() throws {
        let path = "UDDDUDUU"
        let expectedOutput = 1
        
        XCTAssertTrue(countingValleys(steps: path.count, path: path) == expectedOutput)
        XCTAssertFalse(countingValleys(steps: path.count, path: path) != expectedOutput)
    }

    func testCase3() throws {
        let path = "DUDDUUUUDDD"
        let expectedOutput = 2
        
        XCTAssertTrue(countingValleys(steps: path.count, path: path) == expectedOutput)
        XCTAssertFalse(countingValleys(steps: path.count, path: path) != expectedOutput)
    }

    func testCase4() throws {
        let path = "DDUUDDUDUUUD"
        let expectedOutput = 2
        
        XCTAssertTrue(countingValleys(steps: path.count, path: path) == expectedOutput)
        XCTAssertFalse(countingValleys(steps: path.count, path: path) != expectedOutput)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
