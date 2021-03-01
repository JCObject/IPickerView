# IPickerView
单行自定义数据源选择器

# 效果如下
![Simulator Screen Shot - iPhone 12 Pro Max - 2021-03-01 at 17 25 47](https://user-images.githubusercontent.com/70566070/109477893-8a1fb300-7ab3-11eb-94e6-7e71b8c68547.png)

# 使用
1、方式一
```
        ICustomDataPickerView.showPickerView(title: "哈哈", data: ["fdsa", "888", "fsaf"]) { (text) in
            print(text)
            self.choseTextLabel.text = text
        }
```
2、方式二
        let pickerView = ICustomDataPickerView()
        pickerView.dataSource = ["fdsa", "888", "fsaf"]
        pickerView.resultBlock = { text in
            print(text)
            self.choseTextLabel.text = text
        }
        pickerView.show()
