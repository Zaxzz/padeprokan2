import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:padeprokan/components/button/appbar_widget.dart';

void main() => runApp(const ClassPage());

class ClassPage extends StatelessWidget {
  const ClassPage({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return Scaffold(appBar: AppbarWidget(), body: Container());
=======
    return Scaffold(
      appBar: appbarclass(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.person_off_outlined, size: 40),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_horiz_outlined, size: 40),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Ink(
                        // ignore: sort_child_properties_last
                        child: Card(
                          color: Colors.white,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/conference.svg'),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Video Conference',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Meet your team online',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        height: 260.0,
                        width: 260.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Ink(
                        // ignore: sort_child_properties_last
                        child: Card(
                          color: Colors.white,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/images/courses.svg'),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Courses',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Collection of our learning ',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const Text(
                                    ' materials on any format such as ',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const Text(
                                    ' as Video, Ebook, Doc, etc',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        height: 260.0,
                        width: 260.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Ink(
                        // ignore: sort_child_properties_last
                        child: Card(
                          color: Colors.white,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/images/docs.svg'),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Docs & Files',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Upload or read your',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const Text(
                                    'docs & files here',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        height: 260.0,
                        width: 260.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Ink(
                        // ignore: sort_child_properties_last
                        child: Card(
                          color: Colors.white,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/schedule.svg'),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Schedule',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Schedule your work/activites ',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const Text(
                                    'time line here ',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        height: 260.0,
                        width: 260.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Ink(
                        // ignore: sort_child_properties_last
                        child: Card(
                          color: Colors.white,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/images/checkin.svg'),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Automatic Check-ins',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Daly report to track your own/',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const Text(
                                    'team progres',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        height: 260.0,
                        width: 260.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Ink(
                        // ignore: sort_child_properties_last
                        child: Card(
                          color: Colors.white,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/groupchat.svg'),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Group Chat',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Chit chat about your work ',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const Text(
                                    'progress,your daly axtivity,or',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const Text(
                                    'just some random talk',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        height: 260.0,
                        width: 260.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Ink(
                        // ignore: sort_child_properties_last
                        child: Card(
                          color: Colors.white,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/infoboard.svg'),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Info Board',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Get the latest information',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const Text(
                                    'on your workplace/school',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        height: 260.0,
                        width: 260.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Ink(
                        // ignore: sort_child_properties_last
                        child: Card(
                          color: Colors.white,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/images/logo.svg'),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Tasks',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Text(
                                    'Kamban board to track your',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const Text(
                                    'Tasks/project',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        height: 260.0,
                        width: 260.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appbarclass(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: const Text(
        'Class',
        style: TextStyle(color: Colors.black),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.person,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
>>>>>>> Stashed changes
  }
}
