
Pod::Spec.new do |spec|
  spec.name         = "IPickerView"
  spec.version      = "0.0.1"
  spec.summary      = "custom data source selector."
  spec.description  = <<-DESC 
  "自定义数据源选择器"
                   DESC

  spec.homepage     = "https://github.com/JCObject/IPickerView"
  spec.license      = { :type => "MIT", :file => "License" }
  spec.author       = { "Leblanc" => "15926266460@163.com" }
  spec.source       = { :git => "https://github.com/JCObject/IPickerView.git", :tag => "0.0.1" }
  spec.source_files = "IPickerView/IPickerView/IPickerView/*.swift"
 
end
