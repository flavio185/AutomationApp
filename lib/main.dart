import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Minha primeira app"),
        ),
        body: DeviceList(),
      ),
    );
  }
}

class DeviceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        DeviceIten(Device("Lampada 1", "http://192.189.10.15/lugar/switch1")),
        DeviceIten(Device("Lampada 2", "http://192.189.10.15/lugar/switch2")),
      ],
    );
  }
}

class DeviceIten extends StatelessWidget {
  final Device _device;

  DeviceIten(this._device);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        title: Text(_device.nome),
        subtitle: Text(_device.url),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}

class Device {
  final String nome;
  final String url;

  Device(this.nome, this.url);
}
