
// 0.类型转换问题
// json 转 模型，类型一定要准确，不然转化不成功的，不会像oc swift 这种接口是 int key1 模型可以声明 bool key1

// 1.pod 版本不一致
// 增加遍历判断版本的脚本
// /Users/cocomanber/Documents/flutterDemos/flutter_weibo_demo/.ios/Pods/Pods.xcodeproj: 
//warning: The iOS Simulator deployment target 'IPHONEOS_DEPLOYMENT_TARGET' is set to 8.0, 
//but the range of supported deployment target versions is 9.0 to 15.5.99. (in target 'Toast' from project 'Pods')

// 2.对于一些需要依赖原生能力的插件 例如 `Fluttertoast`
// 在调试的时候，需要 pod install，然后重新build flutter 工程，至少看到 pods 有拉下来才可以调试。
