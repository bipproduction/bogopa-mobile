
import 'package:flutter/material.dart';

class ContohCustomView extends StatefulWidget{
  const ContohCustomView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TheApp();
  }
}

class _TheApp extends State<ContohCustomView> {

  String cOutlet = "RST";

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "dosis",
      ),
      home: Scaffold(
        body: Align(
          alignment: Alignment.topLeft,
          child: SafeArea(
            child: NestedScrollView(headerSliverBuilder: (context,scroll){
              return <Widget>[
              ];
            }, body: CustomScrollView(
              slivers: <Widget>[
                SliverList(delegate: SliverChildListDelegate(
                  [
                    Container(
                      child: DefaultTabController(
                          length: 2,
                          child: Scaffold(
                            appBar: AppBar(
                              bottom: TabBar(
                                isScrollable: true,
                                tabs: <Widget>[
                                  Tab(icon: Container(
                                    width: 200,
                                    child: Column(
                                      children: [
                                        Icon(Icons.show_chart,color: Colors.blue,)
                                      ],
                                    ),
                                  ),),
                                  Tab(icon: Icon(Icons.details,color: Colors.blue,),)
                                ],
                              ),
                              title: Text("Salest Trafic",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                              flexibleSpace: FlexibleSpaceBar(
                                // background: Container(
                                //   decoration: BoxDecoration(
                                //     gradient: LinearGradient(
                                //       begin: Alignment.topLeft,
                                //       end: Alignment.topRight,
                                //       colors: [
                                //         Colors.blue[300],
                                //         Colors.blue[500],
                                //         Colors.blue[800]
                                //       ]
                                //     )
                                //   ),
                                // ),
                              ),
                              backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
                            ),
                            body: TabBarView(
                                children: [
                                  // CSalesTrafic(),
                                  SingleChildScrollView(
                                    child: Card(
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        child: Column(
                                          
                                          children: [
                                            Text("disini"),
                                            Container(
                                              height: 300,
                                              decoration: BoxDecoration(color: Colors.blue),
                                              child: Text("ini bawahnya"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                          )
                      ),
                      height: MediaQuery.of(context).size.height,
                    ),
                  ]
                ))
              ],
            ))
          ),
        ),
      ),
    );
  }
}

