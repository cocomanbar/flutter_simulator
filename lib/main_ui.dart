
// https://flutter.cn/docs/development/ui/layout#listview

// // 定义一个接口
// abstract class DataSendable {
//   /// It is uncommon for subclasses to override this method.
//   void dataSendable(dynamic data);
// }

// Dart枚举特性
// index从0开始，依次累加
// 不能指定原始值
// 不能添加方法

// ListView有四种构造函数：
// 默认构造函数ListView。
// ListView.builder，适用于具有大量（或无限）列表项。
// ListView.separated，可以配置分割线，适用于具有固定数量列表项的ListView。
// ListView.custom，提供了自定义子Widget的能力。

// GridView的使用方法和ListView类似，它有五种构造函数：
// 默认构造函数GridView。
// GridView.count：在横轴方向上具有固定数量的GridView。
// GridView.extent：在横轴方向上具有最大范围的GridView。
// GridView.builder：适用于具有大量（或无限）列表项。
// GridView.custom：提供了自定义子Widget的能力。

// PageView是一个可逐页滚动的列表，和Android中ViewPage类似。
// PageView有三种构造函数：
// 默认构造函数PageView
// PageView.builder：适用于具有大量（或无限）列表项。
// PageView.custom：提供了自定义子Widget的能力。

// 加圆角的方式
// 控件外层嵌套一层new Material
// 使用装饰器
