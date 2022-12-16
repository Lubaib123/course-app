import 'package:flutter/material.dart';
import 'package:trogan_assesment/Controller/ApiController.dart';
import 'package:trogan_assesment/Model/coursemode.dart';
import 'package:trogan_assesment/View/CoursePage/Coursepage_widgets.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey[800],
        onPressed: () {},
        child: Icon(Icons.menu),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData)
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Top_Course(),

                      //TopCourse Conainters
                      SizedBox(
                        height: 170,
                        width: double.infinity,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return TopCourseCard(snapshot.data!, index);
                            }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          // height: 100,
                          width: double.infinity,
                          child: gridviewPart(context))
                    ],
                  ),
                );
              else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}

Widget gridviewPart(BuildContext context) {
  return FutureBuilder(
      future: getCategoriesData(),
      builder: (context, snashot) {
        if (snashot.hasData)
          return GridView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: snashot.data!.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 3 / 3,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, int index) {
              return Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 130,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(snashot.data![index].thumbnail!),
                          fit: BoxFit.fill,
                        ),
                        // shape: BoxShape.circle,
                      ),
                      // color: Colors.red,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(int.parse(
                            "0x" + snashot.data![index].code.toString())),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      height: 46,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              snashot.data![index].name!,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 23, 23, 23)),
                            ),
                            Text(
                              snashot.data![index].numberOfCourses!.toString() +
                                  " Courses",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 4, 4, 4)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        else {
          return Center(child: CircularProgressIndicator());
        }
      });
}
