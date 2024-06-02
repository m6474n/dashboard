import 'package:dashboard/Components/CardContainer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(color: Colors.white,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
        
            children: [
          
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 18),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomCard(height: _width*0.15,bgColor: Colors.deepPurple,)),
                  Expanded(flex: 1,
                  child: CustomCard(height: _width*0.15)),
                  Expanded(
                    flex: 1,
                    child: CustomCard(height: _width*0.15))
            
              ]),
            ),   Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 18),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 
                  Expanded(flex: 1,
                  child: CustomCard(height: _width*0.25)),
                  Expanded(
                    flex: 1,
                    child: CustomCard(height: _width*0.25))
            
              ]),
            ),  Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 18),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomCard(height: _width*0.15,)),
                  Expanded(flex: 1,
                  child: CustomCard(height: _width*0.15)),
                  Expanded(
                    flex: 1,
                    child: CustomCard(height: _width*0.15))
            
              ]),
            )
          ],)),
      ),
    );
  }
}