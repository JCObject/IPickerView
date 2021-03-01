//
//  ViewController.swift
//  IPickerView
//
//  Created by Leblanc on 2021/2/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        btn.setTitle("点击", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .brown
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        view.addSubview(btn)
        
    }
    
    /// 点击事件
    @objc func btnClick() {
        
        ICustomDataPickerView.showPickerView(title: "哈哈", data: ["fdsa", "888", "fsaf"]) { (text) in
            print(text)
        }
        
    }


}

