# IPickerView
1、单行自定义数据源选择器
2、城市选择器

# 效果如下
![Simulator Screen Shot - iPhone 12 Pro Max - 2021-03-01 at 17 25 47](https://user-images.githubusercontent.com/70566070/109477893-8a1fb300-7ab3-11eb-94e6-7e71b8c68547.png)
![Simulator Screen Shot - iPhone 12 Pro Max - 2021-03-03 at 09 01 44](https://user-images.githubusercontent.com/70566070/109736379-2c987d00-7bff-11eb-995e-9ec645e81401.png)

# 使用方式

一、单行自定义数据源选择器使用
1、方式一
```
        ICustomDataPickerView.showPickerView(title: "哈哈", data: ["fdsa", "888", "fsaf"]) { (text) in
            print(text)
            self.choseTextLabel.text = text
        }
```
2、方式二
```
        let pickerView = ICustomDataPickerView()
        pickerView.dataSource = ["fdsa", "888", "fsaf"]
        pickerView.resultBlock = { text in
            print(text)
            self.choseTextLabel.text = text
        }
        pickerView.show()
```

二、城市选择器使用
1、方式一
```
        let pickerView = ICityPickerView()
        pickerView.resultBlock = { (p, c, a) in
            self.choseTextLabel.text = p + c + a
        }
        pickerView.show()

```
2、方式二
```
        ICityPickerView.showPickerView { (p, c, a) in
            self.choseTextLabel.text = p + c + a
        }

```
