import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '路由登录页',
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => {
            Navigator.of(context).pop(),
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1. pushReplacementNamed与popAndPushNamed',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'pushReplacement与pushReplacementNamed是同样的效果，唯一区分就是通过明命名路由和非命名路由跳转。两者都是替换掉当前页面的路由, 但是两者的方式不一样',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route_home');
                },
                child: Text('路由首页'),
              ),
              Text(
                '1. pushNamedAndRemoveUntil',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '用户已经登陆进入 HomeScreen ，然后经过一系列操作回到配合只界面想要退出登录，你不能够直接 Push 进入 LoginScreen 吧？你需要将之前路由中的实例全部删除是的用户不会在回到先前的路由中',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route_home');
                },
                child: Text('路由首页'),
              ),
              Text(
                '我们有一个需要付款交易的购物应用。在应用程序中，一旦用户完成了支付交易，就应该从堆栈中删除所有与交易或购物车相关的页面，并且用户应该被带到 PaymentConfirmationScreen ,单击后退按钮应该只将它们带回到 ProductsListScreen 或 HomeScreen',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route_home');
                },
                child: Text('路由首页'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
