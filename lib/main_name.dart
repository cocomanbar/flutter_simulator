
// 命名规范
// 文件夹： 小写下划线 lowercase_with_underscores
// 文件：   小写下划线 lowercase_with_underscores
// 类名：   大写开头的驼峰命名法 UpperCamelCase
// 变量名： 小写开头的驼峰命名法 lowerCamelCase
// 常量：   小写开头的驼峰命名法 lowerCamelCase

// 首字母缩写词长度不超过两个字母的，首字母大写，比如 HttpRequest
// 长度两个字母的首字母缩写词可完全大写，比如 IOStream， DBUtils
// 但单个单词缩写仍然仅首字母大写，比如 Id

// Flutter                                  引入包import的各种含义，及常用命名规则
// import 'dart:xxx';                       引入Dart标准库
// import 'xxx/xxx.dart';                   引入相对路径的Dart文件
// import 'package:xxx/xxx.dart';           引入Pub仓库pub.dev(或者pub.flutter-io.cn)中的第三方库
// import 'package:project/xxx/xxx.dart';   引入自定义的dart文件
// import 'xxx' show compute1，compute2     只导入compute1，compute2
// import 'xxx' hide compute3               除了compute都引入
// import 'xxx' as compute4                 将库重命名，当有名字冲突时

// 撤销操作
// 在Mac中可以使用快捷键“Ctrl + -”实现。