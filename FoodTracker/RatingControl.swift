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
    let spacing = 5
    let starCount = 5

    // MARK: Initialization
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        
        for _ in 0..<starCount
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
        let buttonSize = Int(frame.size.height)
        let width = (buttonSize * starCount) + (spacing * (starCount - 1))
        
        return CGSize(width: width, height: buttonSize)
    }
    
    override func layoutSubviews()
    {
        // Set the button's width and height to a square the size of the frame's height
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        // Offset each button's origin by the length of the button plus spacing.
        for(index, button) in ratingButtons.enumerated()
        {
            buttonFrame.origin.x = CGFloat(index * (buttonSize+spacing))
            button.frame = buttonFrame
        }
    }
    
    // MARK: Button Action
    func ratingButtonTapped(_ button: UIButton)
    {
        print("Button Pressed")
    }

}
