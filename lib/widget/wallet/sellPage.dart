
import 'package:omni/model/state_lib.dart';
import 'package:omni/widget/compnent/head.dart';
import 'package:omni/widget/menu/addressChildMenu.dart';
import 'package:omni/widget/wallet/addressFull.dart';
import 'package:omni/widget/wallet/sendProgress.dart';

class SellPage extends StatefulWidget {
  final Object item;
  SellPage({Key key, this.item}) : super(key: key);
  _SellPageState createState() => new _SellPageState();
}

class _SellPageState extends State<SellPage> {
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
            color: Color.fromRGBO(70, 116, 182, 0.07),
            child: new Stack(
              children: <Widget>[
                new Positioned(
                  child: new AfterLoginHead(),
                ),
                new Positioned(
                  bottom: 0,
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
                                      splashColor: Color(0x00ffffff),
                                      highlightColor: Color(0x00ffffff),
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
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                      // fontFamily: 'GothamRnd',
                                                      fontSize: ScreenUtil()
                                                          .setSp(10),
                                                      letterSpacing:
                                                          ScreenUtil()
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
                            height: ScreenUtil().setHeight(290),
                            padding: EdgeInsets.only(
                              top: ScreenUtil().setHeight(32),
                              bottom: ScreenUtil().setHeight(32),
                              left: ScreenUtil().setWidth(18),
                              right: ScreenUtil().setWidth(18),
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(130, 160, 206, 1),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(44),
                                  bottomRight: Radius.circular(44)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(130, 160, 206, 0.50),
                                    offset: Offset(
                                      ScreenUtil().setSp(0),
                                      ScreenUtil().setSp(24),
                                    ),
                                    blurRadius: 48.0,
                                    spreadRadius: 2.0),
                              ],
                            ),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Container(
                                  child: new Text(
                                    'SELL',
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil().setSp(12),
                                        // fontFamily: 'GothamRnd',
                                        color: Color.fromRGBO(0, 0, 0, 0.45),
                                        letterSpacing:
                                            ScreenUtil().setSp(3.47)),
                                  ),
                                ),
                                new Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setHeight(16)),
                                  child: new Text('AMOUNT (USD)',
                                      style: new TextStyle(
                                        fontSize: ScreenUtil().setSp(10),
                                        // fontFamily: 'GothamRnd',
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.75),
                                      )),
                                ),
                                new Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setHeight(8)),
                                  height: ScreenUtil().setHeight(68),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(0, 0, 0, 0.2),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: new FlatButton(
                                    child: new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Container(
                                          child: new Text(
                                            '\$200',
                                            style: new TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize:
                                                    ScreenUtil().setHeight(41),
                                                // fontFamily: 'GothamRnd',
                                                color: Colors.white,
                                                letterSpacing:
                                                    ScreenUtil().setSp(3.47)),
                                          ),
                                        ),
                                        new Container(
                                          width: ScreenUtil().setSp(24),
                                          height: ScreenUtil().setSp(24),
                                          child: new Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.white,
                                            size: ScreenUtil().setSp(24),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                new Container(
                                  height: ScreenUtil().setHeight(24),
                                  margin: EdgeInsets.only(
                                    top: ScreenUtil().setHeight(24),
                                  ),
                                  child: new Row(
                                    children: <Widget>[
                                      new Container(
                                        width: 40,
                                        child: new Text('FROM',
                                            textAlign: TextAlign.right,
                                            style: new TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                // fontFamily: 'GothamRnd',
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.5),
                                                letterSpacing:
                                                    ScreenUtil().setSp(-0.61))),
                                      ),
                                      new Container(
                                        height: 24,
                                        width: 50,
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(8)),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: new FlatButton(
                                          padding: EdgeInsets.all(0),
                                          child: new Center(
                                            child: new Container(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      ScreenUtil().setWidth(4)),
                                              child: new Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  new Container(
                                                    child: new Text(
                                                      'OMNI',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: ScreenUtil()
                                                              .setSp(8),
                                                          // fontFamily: 'GothamRnd',
                                                          color: Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                          letterSpacing:
                                                              ScreenUtil()
                                                                  .setSp(
                                                                      -0.24)),
                                                    ),
                                                  ),
                                                  new Container(
                                                    child: new Icon(
                                                      Icons.keyboard_arrow_down,
                                                      size: ScreenUtil()
                                                          .setHeight(20),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      new Container(
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(8)),
                                        child: new Text('.03432',
                                            style: new TextStyle(
                                                fontSize:
                                                    ScreenUtil().setHeight(20),
                                                // fontFamily: 'GothamRnd',
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.5),
                                                letterSpacing:
                                                    ScreenUtil().setSp(-0.61))),
                                      ),
                                    ],
                                  ),
                                ),
                                new Container(
                                  height: 24,
                                  margin: EdgeInsets.only(
                                    top: ScreenUtil().setHeight(24),
                                  ),
                                  child: new Row(
                                    children: <Widget>[
                                      new Container(
                                        width: 40,
                                        child: new Text('TO',
                                            textAlign: TextAlign.right,
                                            style: new TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                // fontFamily: 'GothamRnd',
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.5),
                                                letterSpacing:
                                                    ScreenUtil().setSp(-0.61))),
                                      ),
                                      new Container(
                                        height: 24,
                                        width: 50,
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(8)),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: new FlatButton(
                                          padding: EdgeInsets.all(0),
                                          child: new Center(
                                            child: new Container(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      ScreenUtil().setWidth(4)),
                                              child: new Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  new Container(
                                                    child: new Text(
                                                      'OMNI',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: ScreenUtil()
                                                              .setSp(8),
                                                          // fontFamily: 'GothamRnd',
                                                          color: Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                          letterSpacing:
                                                              ScreenUtil()
                                                                  .setSp(
                                                                      -0.24)),
                                                    ),
                                                  ),
                                                  new Container(
                                                    child: new Icon(
                                                      Icons.keyboard_arrow_down,
                                                      size: ScreenUtil()
                                                          .setHeight(20),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      new Container(
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(8)),
                                        child: new Text('.03432',
                                            style: new TextStyle(
                                                fontSize:
                                                    ScreenUtil().setHeight(20),
                                                // fontFamily: 'GothamRnd',
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.5),
                                                letterSpacing:
                                                    ScreenUtil().setSp(-0.61))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ),
                new Positioned(
                  bottom: 75,
                  child: new Container(
                    width: ScreenUtil().setWidth(376),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          margin:
                              EdgeInsets.only(left: ScreenUtil().setWidth(64)),
                          child: new FlatButton(
                            splashColor: Color(0x00ffffff),
                            highlightColor: Color(0x00ffffff),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            padding: EdgeInsets.all(0),
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenUtil().setHeight(12)),
                                    width: 24,
                                    child:
                                        new Image.asset('images/cancel.png')),
                                new Container(
                                    child: new Text(
                                  'CANCEL',
                                  textAlign: TextAlign.center,
                                  style: UtilStyle.formSubmitFont,
                                ))
                              ],
                            ),
                          ),
                        ),
                        new Container(
                          margin:
                              EdgeInsets.only(right: ScreenUtil().setWidth(64)),
                          child: new FlatButton(
                            splashColor: Color(0x00ffffff),
                            highlightColor: Color(0x00ffffff),
                            onPressed: () {
                              Navigator.push(context, new MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return new SendProgress(item: item);
                              }));
                            },
                            padding: EdgeInsets.all(0),
                            child: new Container(
                              child: new Column(
                                children: <Widget>[
                                  new Container(
                                      margin: EdgeInsets.only(
                                          bottom: ScreenUtil().setHeight(12)),
                                      width: 24,
                                      child:
                                          new Image.asset('images/sell.png')),
                                  new Container(
                                      child: new Text(
                                    'SELL',
                                    textAlign: TextAlign.center,
                                    style: UtilStyle.formSubmitFont,
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
