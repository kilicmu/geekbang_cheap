import 'package:flutter/material.dart';
import 'package:plume_ui/components/card/card.dart';

class AllCourses extends StatefulWidget {
  const AllCourses({Key? key}) : super(key: key);

  @override
  State<AllCourses> createState() => _AllCoursesState();
}

class _AllCoursesState extends State<AllCourses> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 12.0,
      runSpacing: 12.0,
      alignment: WrapAlignment.start,
      children: [
        CrCard(size: Size(340.0, 200.0), child: Text("text")),
        CrCard(size: Size(340.0, 200.0), child: Text("text")),
        CrCard(size: Size(340.0, 200.0), child: Text("text")),
        CrCard(size: Size(340.0, 200.0), child: Text("text")),
        CrCard(size: Size(340.0, 200.0), child: Text("text")),
        CrCard(size: Size(340.0, 200.0), child: Text("text")),
        CrCard(size: Size(340.0, 200.0), child: Text("text")),
        CrCard(size: Size(340.0, 200.0), child: Text("text")),
        CrCard(size: Size(340.0, 200.0), child: Text("text")),
        CrCard(size: Size(340.0, 200.0), child: Text("text")),
        CrCard(size: Size(340.0, 200.0), child: Text("text")),
        CrCard(size: Size(340.0, 200.0), child: Text("text")),
      ],
    );
  }
}
