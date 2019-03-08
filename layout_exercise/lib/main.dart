import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'layout',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('layout Exercise'),
        ),
        body: Column(
          children: <Widget>[
            //图片
            new Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: new Image(
                image: AssetImage('images/land.png'),
              ),
            ),
            // 第一行
            new Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: new Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: new Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(right: 70),
                      height: 60,
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'kandersteg, Switzerland',
                            style: TextStyle(
                              color: Colors.black26,
                            ),
                          )
                        ],
                      ),
                    ),
                    new Center(
                      child: Icon(Icons.star, color: Colors.red),
                    ),
                    new Container(
                      padding: EdgeInsets.all(5),
                      child: new Text('5'),
                    )
                  ],
                ),
              ),
            ),
            // 第二行
            new Container(
              height: 100,
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Icon(Icons.phone, color: Colors.blue),
                      new Text(
                        'CALL',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Icon(Icons.directions, color: Colors.blue),
                      new Text(
                        'ROUTE',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Icon(Icons.share, color: Colors.blue),
                      new Text(
                        'SHARE',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
            ),
            new Container(
                padding: EdgeInsets.all(20),
                child: new Text(
                    '说白了，layout的方式就是一层一层的搭积木，和H5的基本一样，一层一层的往里面写，multi-child layout widget 默认支持flex布局，可以通过mainAxisAlignment（主轴属性）和 crossAxisAlignment（垂直轴属性）来进行flex布局。',
                    style: new TextStyle(color: Colors.black38))),
          ],
        ),
      ),
    );
  }
}
