//
//  Meal.swift
//  FoodTracker
//
//  Created by Cooper Luetje on 10/9/16.
//
//

import UIKit

class Meal
{
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initilization
    init?(name: String, photo: UIImage?, rating: Int)
    {
        // Initilize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initilization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0
        {
            return nil
        }
    }
}
