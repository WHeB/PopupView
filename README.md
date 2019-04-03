# 项目描述
1、集成 Alert, Sheet, Bubble气泡 三种弹窗，可以自定义样式，使用方便。

2、Swift4.0 开发

# 集成方式

1、自动集成

pod 'WPPopupView'

使用时导入：import WPPopupView

2、手动集成

复制 WPPopupView 文件下代码到项目中

# 使用
1、Alert

```
var style = WPPopupStyle.init()
style.animationOptions = .zoom
let update = "确定退出登录吗？"
WPPopupView.showAlertView(style: style, title: "退出登录", detail: update, buttons: ["取消", "确定"]) { (_, index) in
    print(index)
}
```

2、Sheet

```
var style = WPPopupStyle.init()
style.lastBtnColor = UIColor.red
style.animationOptions = .buttomPop
WPPopupView.showSheetView(style: style, title: "请选择照片", detail: nil, buttons: ["拍照", "从相册选择","取消"]) { (_, index) in
   print(index)
}
```

3、Bubble

```
var style = WPPopupStyle.init()
style.animationOptions = .zoom
style.popupBgColor = UIColor.black
style.touchHide = true
style.labelColor = UIColor.white
style.lineColor = UIColor.white
style.triangleOrientation = .top
style.adjustDistance = 60
let Y: CGFloat = WPPopupToll.isHasSafeArea ? 88 : 64
let point = CGPoint.init(x: ScreenWidth - 80, y: Y)
WPPopupView.showBubbleView(startPoint: point, style: style, viewSize: CGSize.init(width: 150, height: 200), imgNameAndTitleArray: [("iconMsg", "发起群聊"), ("iconAdd", "添加朋友"), ("iconScan", "扫一扫"), ("iconPay", "收付款")]) { (string, index) in
    print(string)
    print(index)
}
```

```

let array: ItemArray  = [(imgName: nil, title: "发起群聊"), (imgName: nil, title: "添加朋友"), (imgName: nil, title: "扫一扫"), (imgName: nil, title: "收付款")]
WPPopupView.showBubbleView(fromView: sender, style: style, viewSize: CGSize.init(width: 100, height: 200), imgNameAndTitleArray: array) { (string, index) in
    print(string)
    print(index)
}
```
