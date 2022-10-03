import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Image.asset('assets/logo.png'),
            title: Container(
              alignment: Alignment.center,
              child:  const Text(
                'SMART',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            )
          ),
            body: Column(
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: const InkWell(
                          child: Text(
                              'Sensores',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: const InkWell(
                          child: Text(
                            'Fuentes móviles',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: const InkWell(
                          child: Text(
                            'Fiva',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: const InkWell(
                          child: Text(
                            'Fuentes fijas',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                      child: Column(
                        children: [
                          Image.asset('assets/girardota.png'),
                          Text('Hola')
                        ],
                      ),
                ),
                SizedBox(
                  height: 250,
                  child: SfRadialGauge(
                      title: GaugeTitle(text: "Speed Meter"),
                      enableLoadingAnimation: true,
                      animationDuration: 4500,
                      axes: <RadialAxis>[
                        RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
                          GaugeRange(
                              startValue: 0,
                              endValue: 50,
                              color: Colors.green,
                              startWidth: 10,
                              endWidth: 10),
                          GaugeRange(startValue: 50, endValue: 100, color: Colors.orange, startWidth: 10, endWidth: 10),
                          GaugeRange(startValue: 100, endValue: 150, color: Colors.red, startWidth: 10, endWidth: 10)
                          //add more Guage Range here
                        ], pointers: const <GaugePointer>[
                          NeedlePointer(
                            value: 20,
                          )
                        ], annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                              widget: Container(
                                  child: Text('20.0', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
                              angle: 90,
                              positionFactor: 0.5),
                          //add more annotations 'texts inside guage' here
                        ])
                      ]),
                )
              ],
            )));
  }
}
