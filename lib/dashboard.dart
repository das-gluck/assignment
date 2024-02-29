import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 330,top: 60),
              child: Image.asset("assets/GroupSmall.png")
          ),
          const SizedBox(height: 10),
          Image.asset("assets/moptroSmall.png"),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Center(child: Text("Employee Productivity Dashboard",style: TextStyle(fontSize: 19),)),
                    )
                  ),
                ],
              ),
          ),
          const SizedBox(height: 10),

          Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade800,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 26,vertical: 30),
                  height: 700,
                  width: double.maxFinite,

                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("   Productivity on Monday",style: TextStyle(fontSize: 17),),
                              const SizedBox(height: 8),
                              Container(
                                padding: EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.green.shade800
                                ),
                                width: 15,
                                height: 22,
                              ),
                            ],
                          ),
                          Text("4%",style: TextStyle(fontSize: 20,color: Colors.green.shade400),)
                        ],
                      ),
                      const SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("   Productivity on Tuesday",style: TextStyle(fontSize: 17),),
                              const SizedBox(height: 8),
                              Container(
                                padding: EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.green.shade800
                                ),
                                width: 170,
                                height: 22,
                              ),
                            ],
                          ),
                          Text("92%",style: TextStyle(fontSize: 20,color: Colors.green.shade400),)
                        ],
                      ),
                      const SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("   Productivity on Wednesday",style: TextStyle(fontSize: 17),),
                              const SizedBox(height: 8),
                              Container(
                                padding: EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.green.shade800
                                ),
                                width: 220,
                                height: 22,
                              ),
                            ],
                          ),
                          Text("122%",style: TextStyle(fontSize: 20,color: Colors.green.shade400),)
                        ],
                      ),
                      const SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("   Productivity on Thursday",style: TextStyle(fontSize: 17),),
                              const SizedBox(height: 8),
                              Container(
                                padding: EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.green.shade800
                                ),
                                width: 175,
                                height: 22,
                              ),
                            ],
                          ),
                          Text("93%",style: TextStyle(fontSize: 20,color: Colors.green.shade400),)
                        ],
                      ),

                      const SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("   Productivity on Friday",style: TextStyle(fontSize: 17),),
                              const SizedBox(height: 8),
                              Container(
                                padding: EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.green.shade800
                                ),
                                width: 160,
                                height: 22,
                              ),
                            ],
                          ),
                          Text("89%",style: TextStyle(fontSize: 20,color: Colors.green.shade400),)
                        ],
                      ),
                      const SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("   Productivity on Saturday",style: TextStyle(fontSize: 17),),
                              const SizedBox(height: 8),
                              Container(
                                padding: EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.green.shade800
                                ),
                                width: 170,
                                height: 22,
                              ),
                            ],
                          ),
                          Text("98%",style: TextStyle(fontSize: 20,color: Colors.green.shade400),)
                        ],
                      ),



                    ],
                  ),


                ),
              ),
          ),




        ],
      ),
    );
  }
}
