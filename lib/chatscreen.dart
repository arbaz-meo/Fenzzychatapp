import 'package:chatt_app/chatmessage.dart';
import 'package:flutter/material.dart';
class chatscreen extends StatefulWidget {
  @override
  _chatscreenState createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {

  final TextEditingController _textEditingController= new TextEditingController();
  final List<chatmessage> _messages =<chatmessage>[];
  Widget _textcomposerwidget()
  {
   return new IconTheme(
     data: new IconThemeData(
       color: Colors.purpleAccent
     ),
     child: new Container(
       margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Row(
        children: <Widget>[
          new Flexible(
            child: new TextField(
              decoration: new InputDecoration.collapsed(
                hintText:"send a message",
              ),
              controller: _textEditingController,
              onSubmitted: _handlesubmitted,
            ),
          ),
          new Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: new IconButton(
                icon:new Icon( Icons.send),
              onPressed: ()=> _handlesubmitted(_textEditingController.text),
            ),
          )

        ]
      ),
     ),
   );
  }
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            padding:  EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_,int index) => _messages[index],
            itemCount: _messages.length,
          ),
        ),
        new Divider(height: 1.0,),
        new Container(
          decoration: new BoxDecoration(
              color: Theme.of(context).cardColor
          ),
        )
      ],
    );
  }

  void _handlesubmitted(String text) {
    _textEditingController.clear();
    chatmessage message=new chatmessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }
}
