//
//  Chess.swift
//  ASD
//
//  Created by Geetion on 16/6/18.
//  Copyright © 2016年 Geetion. All rights reserved.
//

import UIKit

class LocationProperty: NSObject {
    
    enum OccupyState{
        case empty
        case UIType
        case UserType
    }
    
    var location:CGPoint?
    var state = OccupyState.empty
}
