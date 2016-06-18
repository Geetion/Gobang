//
//  chessboard.swift
//  ASD
//
//  Created by Geetion on 16/6/18.
//  Copyright © 2016年 Geetion. All rights reserved.
//

import UIKit

class ChessboardView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
    var gridNumber = 19
    private var chessProperty = [[(ChessLocation,OccupyState)]]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let gridSideLength = frame.width/CGFloat(gridNumber)
        let chessBoardSideLength = CGFloat(gridNumber + 2) * gridSideLength
        
        for xIndex in 0...gridNumber+2{
            
            let location_Y = gridSideLength*CGFloat(xIndex)
            
            let horizontalLine = UIView(frame: CGRect(x: 0, y: location_Y, width: chessBoardSideLength, height: 1))
            horizontalLine.backgroundColor = UIColor.blackColor()
            self.addSubview(horizontalLine)
            
            var horizontalState = [(ChessLocation,OccupyState)]()
            
            for yIndex in 0...gridNumber+2{
                
                let location_X = gridSideLength*CGFloat(yIndex)
                let verticalLine = UIView(frame: CGRect(x: location_Y, y:0 , width: 1, height: chessBoardSideLength))
                verticalLine.backgroundColor = UIColor.blackColor()
                self.addSubview(verticalLine)
                
                let location = ChessLocation(x: location_X, y: location_Y)
                horizontalState.append(location,OccupyState.empty)
            }
            chessProperty.append(horizontalState)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch:UITouch = touches.first!
        let location = touch.locationInView(self)
        
        for each in chessProperty{
            each.ChessLocation
        }
        
        
    }

}
