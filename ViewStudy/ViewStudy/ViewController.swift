//
//  ViewController.swift
//  ViewStudy
//
//  Created by Junhong Park on 8/6/20.
//  Copyright © 2020 Junhong Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
//    서브뷰 생성
        let frame = CGRect(x: 60, y: 100, width: 240, height: 120)
        let subView = UIView(frame: frame)

//    서브뷰 색상
        subView.backgroundColor = UIColor.red
        
//    서브뷰 추가하기
        view.addSubview(subView)
        
//    서브뷰 제거하기
        subView.removeFromSuperview()
    }
}

