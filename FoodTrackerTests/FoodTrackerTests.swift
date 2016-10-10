//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Cooper Luetje on 9/20/16.
//
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase
{
    // MARK: FoodTracker Tests
    
    // Tests to confirm that the Meal initilizer returns when no name or a negative rating is provided.
    func testMealInitialization()
    {
        // Success case.
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
    }
    
    
}
