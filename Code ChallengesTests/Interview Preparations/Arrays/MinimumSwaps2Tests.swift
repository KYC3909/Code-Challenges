//
//  MinimumSwaps2Tests.swift
//  Code ChallengesTests
//
//  Created by Krunal on 23/03/22.
//

import XCTest
@testable import Code_Challenges

class MinimumSwaps2Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCase1() throws {
        // This is an example of a functional test case.
        let a = [4,3,1,2]
        let expectedOutput = 3
        
        XCTAssertTrue(minimumSwaps(a: a) == expectedOutput)
        XCTAssertFalse(minimumSwaps(a: a) != expectedOutput)
        XCTAssertEqual(minimumSwaps(a: a), expectedOutput)
    }

    func testCase2() throws {
        // This is an example of a functional test case.
        let a = [1 ,3 ,5 ,2 ,4 ,6 ,7]
        let expectedOutput = 3
        
        XCTAssertTrue(minimumSwaps(a: a) == expectedOutput)
        XCTAssertFalse(minimumSwaps(a: a) != expectedOutput)
        XCTAssertEqual(minimumSwaps(a: a), expectedOutput)
    }

    func testCase3() throws {
        // This is an example of a functional test case.
        let a = [7, 1, 3, 2, 4, 5, 6]
        let expectedOutput = 5
        
        XCTAssertTrue(minimumSwaps(a: a) == expectedOutput)
        XCTAssertFalse(minimumSwaps(a: a) != expectedOutput)
        XCTAssertEqual(minimumSwaps(a: a), expectedOutput)
    }


    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
