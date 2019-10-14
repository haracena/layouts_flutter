import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _image(),
            _titleBox(),
            _actionBox(),
            _textBox(),
            _textBox(),
            _textBox(),
          ],
        ),
      ),
    );
  }

  Widget _image() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://www.technocrazed.com/wp-content/uploads/2015/12/Landscape-wallpaper-11.jpg'),
            height: 250.0,
            fit: BoxFit.cover,
      ),
    );
  }

  Widget _titleBox() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Cherry Tree', style: titleStyle),
                  SizedBox(height: 7.0),
                  Text('Beautiful landscape of Japan', style: subTitleStyle)
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '10',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _actionBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _iconAction(Icons.call, 'CALL'),
        _iconAction(Icons.near_me, 'ROUTE'),
        _iconAction(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _iconAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(
          height: 5.0,
        ),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue)),
      ],
    );
  }

  Widget _textBox() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Lorem ipsum dolor sit amet consectetur adipiscing elit a etiam, ridiculus in quam nec sed egestas lacinia id, placerat vitae sociis commodo vulputate mus congue suscipit. Dignissim neque et ullamcorper hendrerit faucibus facilisis cras habitasse, scelerisque malesuada nascetur leo risus consequat vivamus odio, pellentesque erat viverra per turpis varius ac. Vehicula rutrum taciti aenean porta lacinia mollis augue pretium, sem duis libero lacus turpis curabitur euismod nisi vivamus, donec interdum dictum morbi risus ullamcorper metus',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
