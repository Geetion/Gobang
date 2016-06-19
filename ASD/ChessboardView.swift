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
    private var locationPropertyArray = [[LocationProperty]]()
    private var gridSideLength:CGFloat?
    
    init(location:CGPoint,sideLength:CGFloat) {
        super.init(frame: CGRect(origin: location, size: CGSize(width: sideLength, height: sideLength)))
        
        gridSideLength = frame.width/CGFloat(gridNumber)
        let chessBoardSideLength = CGFloat(gridNumber + 1) * gridSideLength!
        
        for xIndex in 0...gridNumber+1{
            
            let location_Y = gridSideLength!*CGFloat(xIndex)
            
            let horizontalLine = UIView(frame: CGRect(x: 0, y: location_Y, width: chessBoardSideLength, height: 1))
            horizontalLine.backgroundColor = UIColor.blackColor()
            self.addSubview(horizontalLine)
            
            var horizontalState = [(LocationProperty)]()
            
            for yIndex in 0...gridNumber+1{
                
                let location_X = gridSideLength!*CGFloat(yIndex)
                let verticalLine = UIView(frame: CGRect(x: location_Y, y:0 , width: 1, height: chessBoardSideLength))
                verticalLine.backgroundColor = UIColor.blackColor()
                self.addSubview(verticalLine)
                
                let locationProperty = LocationProperty(location: CGPoint(x: location_X, y: location_Y))
                horizontalState.append(locationProperty)
            }
            locationPropertyArray.append(horizontalState)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch:UITouch = touches.first!
        let touchLocation = touch.locationInView(self)
        
        for each in locationPropertyArray{
            for locationProperty in each{
                let delta_X = fabs(locationProperty.location!.x - touchLocation.x)
                let delta_Y = fabs(locationProperty.location!.y - touchLocation.y)
                if delta_X < gridSideLength!/2 && delta_Y < gridSideLength!/2 {
                    placeChess(locationProperty)
                }
            }
        }
    }
    
    func placeChess(locationProperty:LocationProperty){
        
        if locationProperty.state == OccupyState.empty{
            
            let chess = Chess(chessType: .User, chessLocation: locationProperty.location!)
            self.addSubview(chess)
            
            locationProperty.state = OccupyState.UIOccupy
        }
    }
    
}
