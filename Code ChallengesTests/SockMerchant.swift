//
//  SockMerchant.swift
//  Code ChallengesTests
//
//  Created by Krunal on 19/03/22.
//

import XCTest
@testable import Code_Challenges

class SockMerchant: XCTestCase {

    func testCase1() throws {
        // This is an example of a functional test case.
        let n = 9
        let array = [10, 20, 20, 10, 10, 30, 50, 10, 20]
        let expectedOutput = 3
        
        XCTAssertTrue(sockMerchant1(n: n, ar: array) == expectedOutput)
        XCTAssertFalse(sockMerchant1(n: n, ar: array) != expectedOutput)
    }

    func testCase2() throws {
        // This is an example of a functional test case.
        let n = 10
        let array = [1 ,1 ,3 ,1 ,2,1,3,3,3,3]
        let expectedOutput = 4
        
        XCTAssertTrue(sockMerchant1(n: n, ar: array) == expectedOutput)
        XCTAssertFalse(sockMerchant1(n: n, ar: array) != expectedOutput)
    }

    func testCase3() throws {
        // This is an example of a functional test case.
        let n = 15
        let array = [6 ,5 ,2 ,3 ,5 ,2 ,2 ,1 ,1 ,5 ,1 ,3 ,3 ,3 ,5]
        let expectedOutput = 6
        
        XCTAssertTrue(sockMerchant1(n: n, ar: array) == expectedOutput)
        XCTAssertFalse(sockMerchant1(n: n, ar: array) != expectedOutput)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
