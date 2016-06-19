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
        let view = ChessboardView(location: CGPoint(x: 0,y: 70), sideLength: width-1)
        return view
    }()
    
    lazy var restartButton:UIButton = {
        let button = UIButton()
        button.setTitle("重新开始", forState: UIControlState.Normal)
        return button
    }()
    
    lazy var retractButton:UIButton = {
        let button = UIButton()
        button.setTitle("悔棋", forState: UIControlState.Normal)
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(restartButton)
        self.view.addSubview(retractButton)
        self.view.addSubview(chessboard)
        self.updateViewConstraints()
    }
    
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        retractButton.snp_makeConstraints { (make) in
            make.bottom.equalTo(-50)
            make.left.equalTo(50)
            make.size.equalTo(CGSize(width: 70, height: 30))
        }
        
        restartButton.snp_makeConstraints { (make) in
            make.leading.equalTo(retractButton).offset(50)
            make.size.equalTo(CGSize(width: 70, height: 30))
            
        }
    }
}

