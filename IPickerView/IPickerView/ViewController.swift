//
//  ViewController.swift
//  IPickerView
//
//  Created by Leblanc on 2021/2/26.
//

import UIKit

class ViewController: UIViewController {
    
    var choseTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: UIScreen.main.bounds.width / 2 - 50, y: 100, width: 100, height: 50)
        btn.setTitle("点击", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .brown
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        view.addSubview(btn)
        
        choseTextLabel = UILabel(frame: CGRect(x: 0, y: 150, width: UIScreen.main.bounds.width, height: 50))
        choseTextLabel.text = "选中的文字"
        choseTextLabel.textAlignment = .center
        view.addSubview(choseTextLabel)
        
    }
    
    /// 点击事件
    @objc func btnClick() {
        
        let pickerView = ICustomDataPickerView()
        pickerView.dataSource = ["fdsa", "888", "fsaf"]
        pickerView.resultBlock = { text in
            print(text)
            self.choseTextLabel.text = text
        }
        pickerView.show()
        
//        ICustomDataPickerView.showPickerView(title: "哈哈", data: ["fdsa", "888", "fsaf"]) { (text) in
//            print(text)
//            self.choseTextLabel.text = text
//        }
        
    }


}

