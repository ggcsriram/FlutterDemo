import 'package:demo/proxy_provier_example/provider1.dart';
import 'package:demo/proxy_provier_example/provider2.dart';
import 'package:demo/proxy_provier_example/provider3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProxyProviderUI extends StatefulWidget {
  @override
  _ProxyProviderUIState createState() => _ProxyProviderUIState();
}

class _ProxyProviderUIState extends State<ProxyProviderUI> {
  @override
  Widget build(BuildContext context) {
    final provider3=Provider.of<Provider3>(context,listen:false);
    return Scaffold(
          body: Column(
        children: <Widget>[
          Container(
            child:Center(child: Selector<Provider3,int>(
            
              builder: (context, data,child) {
                return Text(data.toString());
              }, selector: (BuildContext context, provider3 ) =>provider3.provider1.i,
            ))
          ),
Selector<Provider3,int>(
            
              builder: (context, data,child) {
                return Text(data.toString());
              }, selector: (BuildContext context, provider3 ) =>provider3.provider2.j,
            ),
            Selector<Provider1,int>(
            
              builder: (context, data,child) {
                return Text(data.toString());
              }, selector: (BuildContext context, provider1 ) =>provider1.i,
            )
        ],
      ),
      floatingActionButton: Row(
        children: <Widget>[
          FloatingActionButton(onPressed: () {
            provider3.provider1.seti();
          },),
          FloatingActionButton(onPressed: () {provider3.provider2.setj();},)
        ],
      ),
    );
  }
}