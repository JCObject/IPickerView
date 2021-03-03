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
        btn.frame = CGRect(x: UIScreen.main.bounds.width / 2 - 120, y: 100, width: 100, height: 50)
        btn.setTitle("点击", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .brown
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        view.addSubview(btn)
        
        choseTextLabel = UILabel(frame: CGRect(x: 0, y: 150, width: UIScreen.main.bounds.width, height: 50))
        choseTextLabel.text = "选中的文字"
        choseTextLabel.textAlignment = .center
        view.addSubview(choseTextLabel)
        
        let choseCityBtn = UIButton(type: .custom)
        choseCityBtn.frame = CGRect(x: UIScreen.main.bounds.width / 2 + 20, y: 100, width: 100, height: 50)
        choseCityBtn.setTitle("选择省市区", for: .normal)
        choseCityBtn.setTitleColor(.white, for: .normal)
        choseCityBtn.backgroundColor = .brown
        choseCityBtn.addTarget(self, action: #selector(choseCityAction), for: .touchUpInside)
        view.addSubview(choseCityBtn)
        
    }
    
    /// 自定义数据源点击事件
    @objc func btnClick() {
        
        // 方式一
        let pickerView = ICustomDataPickerView()
        pickerView.dataSource = ["fdsa", "888", "fsaf"]
        pickerView.resultBlock = { text in
            print(text)
            self.choseTextLabel.text = text
        }
        pickerView.show()
        
        // 方式二
//        ICustomDataPickerView.showPickerView(title: "哈哈", data: ["fdsa", "888", "fsaf"]) { (text) in
//            print(text)
//            self.choseTextLabel.text = text
//        }
        
    }

    
    /// 选择省市区
    @objc func choseCityAction() {
        
        // 方式一
        let pickerView = ICityPickerView()
        pickerView.resultBlock = { (p, c, a) in
            self.choseTextLabel.text = p + c + a
        }
        pickerView.show()
        
        // 方式二
//        ICityPickerView.showPickerView { (p, c, a) in   
//            self.choseTextLabel.text = p + c + a
//        }
    }

}

