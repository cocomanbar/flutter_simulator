

// ==================>>>>>>>>  JsonSerializable

// 执行生成解析 JSON 的脚本代码前
// 1.补上： `part 'examplexxx.g.dart';`，用于生成对应的同名.g文件
// 2.初始化默认构造器，这点很烦，如果字段多也不省心，除非都搞可选值。
// 3.补上反序列构造器，这个看情况，简单的模型，不需要，但是嵌套复杂的不先补上类型提示报错，很坑。
// 4.需要自动生成解析代码的类补上 @JsonSerializable()
// 5.如果报错，重新来。。

// flutter packages pub run build_runner build    //使用 build_runner 生成 .g.dart 文件
// flutter packages pub run build_runner wacth    //监控生成文件，如果有改动时自动生成/更新 .g.dart 文件
// flutter packages pub run build_runner build --delete-conflicting-outputs  //删除并重新创建.g.dart文件



