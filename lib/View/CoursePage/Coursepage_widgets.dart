import 'package:flutter/material.dart';
import 'package:trogan_assesment/Model/coursemode.dart';

Row Top_Course() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Top Course",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      TextButton(onPressed: () {}, child: Text("All Courses"))
    ],
  );
}

Widget TopCourseCard(List<CourseModel> data, int index) {
  return Container(
    margin: EdgeInsets.only(left: 16),
    decoration: BoxDecoration(
        color: Colors.black12, borderRadius: BorderRadius.circular(16)),
    height: 160,
    width: 134,
    child: Column(
      children: [
        Container(
          height: 85,
          width: 151,
          // child: Image.network(data[index].thumbnail,
          // fit: BoxFit.cover,

          // ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(data[index].thumbnail),
                  fit: BoxFit.fitWidth),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(data[index].title),
              )),
              //
              Expanded(
                  child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${data[index].fullPrice} INR + GST"),
                ),
              ))
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
          height: 85,
          width: double.infinity,
        )
      ],
    ),
  );
}

// Widget categoriesCard() {
//   return Container(
//     margin: EdgeInsets.only(left: 16),
//     decoration: BoxDecoration(
//         color: Colors.black12, borderRadius: BorderRadius.circular(6)),
//     height: 150,
//     width: 134,
//     child: Column(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(16), topRight: Radius.circular(6))),
//           height: 85,
//           width: double.infinity,
//         ),
//         Container(
//           child: Column(
//             children: [
//               Text("SSLc Malayalayam"),
//               SizedBox(
//                 height: 30,
//               ),
//               Text("4500 inr +Gst")
//             ],
//           ),
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(6),
//                   bottomRight: Radius.circular(6))),
//           height: 85,
//           width: double.infinity,
//         )
//       ],
//     ),
//   );
// }

//

BottomNavigationBar BottomNavigationBarWidget() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.book_outlined),
        label: 'Course',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.card_travel_outlined),
        label: 'My course',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite_outline),
        label: 'Wishklist',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        label: 'account',
      ),
    ],
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.red,
  );
}

