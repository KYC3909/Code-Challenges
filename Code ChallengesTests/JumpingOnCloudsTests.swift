//
//  JumpingOnCloudsTests.swift
//  Code ChallengesTests
//
//  Created by Krunal on 19/03/22.
//

import XCTest
@testable import Code_Challenges

class JumpingOnCloudsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCase1() throws {
        let c = [0,1,0,0,0,1,0] // = 3
        let expectedOutput = 3
        
        XCTAssertTrue(jumpingOnClouds(c: c) == expectedOutput)
        XCTAssertFalse(jumpingOnClouds(c: c) != expectedOutput)
    }

    func testCase2() throws {
        let c = [0,0,1,0,0,1,0] // = 4
        let expectedOutput = 4
        
        XCTAssertTrue(jumpingOnClouds(c: c) == expectedOutput)
        XCTAssertFalse(jumpingOnClouds(c: c) != expectedOutput)
    }

    func testCase3() throws {
        let c = [0,0,0,0,1,0] // = 3
        let expectedOutput = 3
        
        XCTAssertTrue(jumpingOnClouds(c: c) == expectedOutput)
        XCTAssertFalse(jumpingOnClouds(c: c) != expectedOutput)
    }

    func testCase4() throws {
        let c = [0,0,1,0,0,0,0,1,0,0] // = 6
        let expectedOutput = 6
        
        XCTAssertTrue(jumpingOnClouds(c: c) == expectedOutput)
        XCTAssertFalse(jumpingOnClouds(c: c) != expectedOutput)
    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
