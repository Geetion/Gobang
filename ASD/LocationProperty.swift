//
//  Chess.swift
//  ASD
//
//  Created by Geetion on 16/6/18.
//  Copyright © 2016年 Geetion. All rights reserved.
//

import UIKit

public enum OccupyState{
    case empty
    case UIOccupy
    case UserOccupy
}

class LocationProperty: NSObject {
    
    
    var location:CGPoint?
    var state = OccupyState.empty
    
    init(location:CGPoint) {
        super.init()
        self.location = location
    }
}
