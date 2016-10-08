//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Cooper Luetje on 9/25/16.
//
//

import UIKit

class RatingControl: UIView
{
    // MARK: Properties
    var rating = 0
    var ratingButtons = [UIButton]()

    // MARK: Initialization
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        
        for _ in 0..<5
        {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.backgroundColor = UIColor.red
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), for: .touchDown)
            ratingButtons += [button]
            addSubview(button)
        }
    }
    
    override var intrinsicContentSize : CGSize
    {
        return CGSize(width: 240, height: 44)
    }
    
    override func layoutSubviews()
    {
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        // Offset each button's origin by the length of the button plus spacing.
        for(index, button) in ratingButtons.enumerated()
        {
            buttonFrame.origin.x = CGFloat(index * (44+5))
            button.frame = buttonFrame
        }
    }
    
    // MARK: Button Action
    func ratingButtonTapped(_ button: UIButton)
    {
        print("Button Pressed")
    }

}
