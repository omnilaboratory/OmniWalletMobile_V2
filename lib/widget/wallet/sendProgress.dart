
import 'package:omni/model/state_lib.dart';
import 'package:omni/widget/compnent/head.dart';
import 'package:omni/widget/menu/addressChildMenu.dart';
import 'package:omni/widget/wallet/addressFull.dart';

class SendProgress extends StatefulWidget {
  final Object item;
  SendProgress({Key key, this.item}) : super(key: key);
  _SendProgressState createState() => new _SendProgressState();
}

class _SendProgressState extends State<SendProgress> {
  var item;
  @override
  void initState() {
    super.initState();
    item = widget.item;
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<LocalModel>(
      builder: (context, child, model) {
        return new Scaffold(
          body: new Container(
              color: Color.fromRGBO(70, 116, 182, 0.10),
              child: new Stack(
                children: <Widget>[
                  Positioned(
                    child: new AfterLoginHead(),
                  ),
                  Positioned(
                    bottom: 0,
                    child: new FlatButton(
                splashColor: Color(0x00ffffff),
                highlightColor: Color(0x00ffffff),
                onPressed: () {
                  Navigator.pushNamed(context, '/walletAndAddress');
                },
                padding: EdgeInsets.all(0),
                child: new Container(
                    height: ScreenUtil().setHeight(702),
                    width: ScreenUtil().setWidth(376),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(44),
                          topLeft: Radius.circular(44)),
                      color: Color.fromRGBO(242, 244, 248, 1),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(70, 116, 182, 0.10),
                            offset: Offset(
                              ScreenUtil().setSp(0),
                              ScreenUtil().setSp(0),
                            ),
                            blurRadius: 40.0,
                            spreadRadius: 2.0),
                      ],
                    ),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(
                              top: ScreenUtil().setHeight(8),
                              left: ScreenUtil().setWidth(19),
                              right: ScreenUtil().setWidth(19)),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Container(
                                child: new Text('ADDRESSES',
                                    textAlign: TextAlign.left,
                                    style: UtilStyle.tagTitleFontActive),
                              ),
                              new Container(
                                child: new FlatButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {
                                      showDialog<Null>(
                                          context: context,
                                          barrierDismissible: false,
                                          builder: (BuildContext context) {
                                            return new AddressChildMenu();
                                          });
                                    },
                                    child: new Container(
                                      padding: EdgeInsets.only(
                                        top: ScreenUtil().setHeight(5),
                                        bottom: ScreenUtil().setHeight(5),
                                        left: ScreenUtil().setWidth(12),
                                        right: ScreenUtil().setWidth(12),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              ScreenUtil().setWidth(8.0))),
                                      child: new Row(
                                        children: <Widget>[
                                          new Container(
                                            child: new Text('ADD ADDRESS',
                                                style: new TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    // fontFamily: 'GothamRnd',
                                                    fontSize:
                                                        ScreenUtil().setSp(10),
                                                    letterSpacing: ScreenUtil()
                                                        .setSp(0.91))),
                                          ),
                                          new Container(
                                            width: ScreenUtil().setWidth(24),
                                            child: new Image.asset(
                                                'images/down.png'),
                                          )
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          child: new AddressItem(
                            item: item,
                            isLast: true,
                            idx: 0,
                            itemIdx: 1,
                          ),
                        ),
                        new Container(
                          width: ScreenUtil().setWidth(376),
                          height: ScreenUtil().setHeight(473),
                          padding: EdgeInsets.only(
                            top: ScreenUtil().setHeight(32),
                            bottom: ScreenUtil().setHeight(32),
                            left: ScreenUtil().setWidth(18),
                            right: ScreenUtil().setWidth(18),
                          ),
                          child: new Center(
                            child: new Container(
                              height: ScreenUtil().setHeight(101),
                              width: ScreenUtil().setHeight(101),
                              child: new Stack(
                                children: <Widget>[
                                  new Positioned(
                                    top: 0,
                                    child: new Container(
                                      height: ScreenUtil().setHeight(101),
                                      width: ScreenUtil().setHeight(101),
                                      child: new Image.asset('images/logo.png'),
                                    ),
                                  ),
                                  new Center(
                                    child: new Container(
                                      height: ScreenUtil().setWidth(24),
                                      width: ScreenUtil().setWidth(24),
                                      child: new Image.asset('images/gou.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
              )
                  )
                ],
              ),
          ),
        );
      },
    );
  }
}
