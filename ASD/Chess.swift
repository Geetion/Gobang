//
//  Chess.swift
//  ASD
//
//  Created by Geetion on 16/6/19.
//  Copyright © 2016年 Geetion. All rights reserved.
//

import UIKit

enum ChessType{
    case UI
    case User
}

class Chess: UIImageView {
    
    private let size = CGSize(width: 15, height: 15)
    
    init(chessType:ChessType, chessLocation:CGPoint){
        super.init(frame: CGRect(origin: chessLocation, size: size))
        if chessType == .UI {
            self.image = UIImage(named: "whiteChess")
        }else{
            self.image = UIImage(named: "blackChess")
        }
        self.frame = CGRect(x: 0, y: 0, width: 15, height: 15)
        self.center = chessLocation
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
