# ALiProgressHUD
让所有的地方都可以弹窗

#### 1、目的
 项目中，大多数时候都是在view或者控制器中进行弹窗的操作，有时候仅仅是为了一个弹窗还要把状态从view或者model中传到控制器进行弹窗，这相当的麻烦，为什么不让所有的NSObject都可以弹窗呢！
 
 
####  2、具体的方法

废话不多说直接上方法，相信不用我解释大家都可以看得懂

```
/**
 *  显示纯文本 加一个转圈
 *
 *  @param aText 要显示的文本
 */
- (void)showText:(NSString *)aText;

/**
 *  显示错误信息
 *
 *  @param aText 错误信息文本
 */
- (void)showErrorText:(NSString *)aText;

/**
 *  显示成功信息
 *
 *  @param aText 成功信息文本
 */
- (void)showSuccessText:(NSString *)aText;

/**
 *  只显示一个加载框
 */
- (void)showLoading;

/**
 *  隐藏加载框（所有类型的加载框 都可以通过这个方法 隐藏）
 */
- (void)dismissLoading;

/**
 *  显示百分比
 *
 *  @param progress 百分比（整型 100 = 100%）
 */
- (void)showProgress:(NSInteger)progress;

/**
 *  显示图文提示
 *
 *  @param image 自定义的图片
 *  @param aText 要显示的文本
 */
- (void)showImage:(UIImage*)image text:(NSString*)aText;


```

`如果你想自定义显示的图片 可以在ALiProgressHUD中替换那几张图片即可`

demo演示：

![demo](https://i.niupic.com/images/2016/09/08/RnE9pQ.gif)

支持重力感应调整弹窗：

![示例图](http://og0h689k8.bkt.clouddn.com/16-11-3/41928219.jpg)

#### 3、总结
 
 项目中有很多让我们头疼的问题，就不要让这一个小小的弹窗困扰我们了。如果你还需要其他的样式 欢迎给我提issues，我会及时回复的！
