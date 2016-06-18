//
//  ViewController.swift
//  ASD
//
//  Created by Geetion on 16/6/2.
//  Copyright © 2016年 Geetion. All rights reserved.
//

import UIKit
import SnapKit
import ReactiveCocoa

class ViewController: UIViewController {
    
    lazy var chessboard:ChessboardView = {
        let width = UIScreen.mainScreen().bounds.width
        let view = ChessboardView(frame: CGRect(x: 0, y: 100, width: width-1, height: width))
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(chessboard)
    }
}

