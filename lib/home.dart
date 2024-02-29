import 'package:flutter/material.dart';
import 'package:greendzine_assig/model/models.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController controller = TextEditingController();

  List<EmployeeModel> card = [
    EmployeeModel(empID: 1, name: "Arjun", dOB: "16-11-2001", role: "Software Engineer" ),
    EmployeeModel(empID: 2, name: "Rohan", dOB: "12-09-2002", role: "Developer"),
    EmployeeModel(empID: 3, name: "Moni", dOB: "11-03-2003", role: "Web Engineer" ),
    EmployeeModel(empID: 4, name: "RJ", dOB: "22-03-2004", role: "React Developer"),
    EmployeeModel(empID: 5, name: "Ichigo", dOB: "20-12-2005", role: "iOS" ),
    EmployeeModel(empID: 6, name: "Hari", dOB: "12-02-2002", role: "Businessman"),
  ];

  List<EmployeeModel> foundUsers = [];
  @override
  void initState() {
    foundUsers = card;
    super.initState();
  }

  void runFilter(String value) {
    List<EmployeeModel> result = [];
    if(value.isEmpty){
      result = card;
    } else{
      result = card.where((employee) => employee.name!.toLowerCase().contains(value.toLowerCase())).toList();
    }
    setState(() {
      foundUsers = result;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 330,top: 60),
                child: Image.asset("assets/GroupSmall.png")
            ),
            Image.asset("assets/moptroSmall.png"),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                        onChanged: (value) => runFilter(value),
                        controller: controller,
                        style: const TextStyle(color: Colors.white,fontSize: 18),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)
                          ),
                          suffixIcon: const Icon(Icons.search,size: 28,),
                          hintText: "Search with name",
                          hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 18),
                        ),
                      ),
                  ),
                  //IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: foundUsers.isNotEmpty
                    ? ListView.builder(
                    itemCount: foundUsers.length,
                    itemBuilder: (context , index){

                      switch (foundUsers[index].empID! % 2==0){
                        case true:
                          return Container(
                            margin: const EdgeInsets.only(left: 50,right: 10,bottom: 10,top: 5),
                            padding: const EdgeInsets.only(left: 20,top: 20),
                            height: 230,
                            //width: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              //color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text("EMP ID   : ",style: TextStyle(fontSize: 17)),
                                    Text("   ${foundUsers[index].empID}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    const Text("Name     : ",style: TextStyle(fontSize: 17)),
                                    Text("   ${foundUsers[index].name}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    const Text("DOB       : ",style: TextStyle(fontSize: 17)),
                                    Text("   ${foundUsers[index].dOB}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.orange),)
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    const Text("Role       : ",style: TextStyle(fontSize: 17)),
                                    Text("   ${foundUsers[index].role}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green),)
                                  ],
                                ),
                              ],
                            ),
                          );
                        default :
                          return Container(
                            margin: const EdgeInsets.only(left: 10,right: 50,bottom: 10,top: 5),
                            padding: const EdgeInsets.only(left: 20,top: 20),
                            height: 230,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text("EMP ID   : ",style: TextStyle(fontSize: 17)),
                                    Text("   ${foundUsers[index].empID}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    const Text("Name     : ",style: TextStyle(fontSize: 17)),
                                    Text("   ${foundUsers[index].name}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    const Text("DOB       : ",style: TextStyle(fontSize: 17)),
                                    Text("   ${foundUsers[index].dOB}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.orange),)
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    const Text("Role       : ",style: TextStyle(fontSize: 17)),
                                    Text("   ${foundUsers[index].role}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green),)
                                  ],
                                ),
                              ],
                            ),
                          );

                      }
                    },
                )
                    : const Text("No result found"),
            ),

          ],
        ),
    );
  }


}
