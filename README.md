# objc4
## objc4-838
编译成功环境：  
macOS Monterey 12.0.1  
Xcode 13.1  

## objc4-824
## objc4-818.2

# QA
新建调试工程发现断点进不了objc源码，如何解决？

以objc4-824版本为例：  
1. 进入objc4-824，打开objc4.xcworkspace后，新建一个target-debug工程并加入到objc4.xcworkspace中:
![new-project](https://picture-1253172894.cos.ap-chengdu.myqcloud.com/2021/newproject.jpg)

3. 配置 Link Binary:
![link-binary](https://picture-1253172894.cos.ap-chengdu.myqcloud.com/2021/linkbinary.jpg)
3. 配置 Hardened Runtime:
![hardened-runtime](https://picture-1253172894.cos.ap-chengdu.myqcloud.com/2021/hardenedruntime.jpg)


