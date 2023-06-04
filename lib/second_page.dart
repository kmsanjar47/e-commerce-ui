import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [const BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: "Home"),
        const BottomNavigationBarItem(icon: Icon(Icons.file_copy_sharp,color: Colors.black,),label: "File"),
        const BottomNavigationBarItem(icon: Icon(CupertinoIcons.doc_on_clipboard_fill,color: Colors.black,),label: "ClipBoard"),
        const BottomNavigationBarItem(icon: Icon(Icons.calendar_today_rounded,color: Colors.black,),label: "Calender")]),
      backgroundColor: Colors.brown.withOpacity(0.05),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[400],
                        radius: 25,
                        child: const Center(
                          child: Icon(
                            CupertinoIcons.profile_circled,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Hi, Kira!",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notification_important,
                    size: 30,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left:20.0,right: 20),
              child: Text(
                "Tasks for today",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left:20.0,right: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text("5"),
                  SizedBox(
                    width: 2,
                  ),
                  Text("available")
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(left: 7, right: 7),
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left:20.0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Last Connections",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text("See all")
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(left:20.0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Center(
                      child: Icon(
                        Icons.group,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Center(
                      child: Icon(
                        Icons.group,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Center(
                      child: Icon(
                        Icons.group,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Center(
                      child: Icon(
                        Icons.group,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Center(
                      child: Text(
                        "+5",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Active Projects",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text("See all")
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: const Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [Text("Numero 10"), Text("4h")],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Blog and social posts",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(children: [
                                    Icon(CupertinoIcons.exclamationmark_circle),
                                    SizedBox(width: 2,),
                                    Text("Deadline is today")
                                  ],)
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 7,
                          );
                        },
                        itemCount: 10),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
