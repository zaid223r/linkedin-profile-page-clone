import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: non_constant_identifier_names
  Widget SectionHeader(String sectionName, bool hasPlus) {
    return ListTile(
      leading: Text(
        sectionName,
        style: const TextStyle(color: Colors.white, fontSize: 24),
      ),
      trailing: hasPlus
          ? const SizedBox(
              width: 70, // Adjust the width as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                ],
              ),
            )
          : const Icon(
              Icons.edit,
              color: Colors.grey,
            ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget PaddingLeftRight(Widget Widget) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Widget,
    );
  }

  // ignore: non_constant_identifier_names
  Widget SpaceBetweenSections() {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          height: 8,
          color: Colors.black,
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget ProfileHeader() {
    return SizedBox(
        height: 180,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/profilebackground.png"))),
              ),
            ),
            const Positioned(
                top: 50,
                left: 25,
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("images/profileimage.png"),
                )),
            const Positioned(
                left: 363,
                top: 9,
                child: CircleAvatar(
                  radius: 15,
                  child: Icon(
                    Icons.edit,
                    color: Colors.blue,
                    size: 18,
                  ),
                )),
            Positioned(
                top: 100,
                left: 366,
                child: CircleAvatar(
                  backgroundColor: Colors.blueGrey.shade900,
                  child: const Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                )),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Widget ProfileSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Zaid Zuhair Al-Ani",
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const Text(
          "Back-End Developer | AI Developer | Network Engineer",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        const SizedBox(height: 11),
        const Text(
          "Aamal اعمال . Collage of Information Engineering, Al-Nahrain University",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Text(
          "Baghdad, Baghdad Governorate, Iraq",
          style: TextStyle(color: Colors.grey.shade700),
        ),
        const SizedBox(
          height: 11,
        ),
        Text(
          "300 connections",
          style: TextStyle(color: Colors.blue.shade700),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget Buttons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 4,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(
                    "Open to",
                    style: TextStyle(
                        color: Colors.blueGrey.shade900, fontSize: 16),
                  ),
                )),
            const SizedBox(
              width: 6,
            ),
            Expanded(
                flex: 4,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.blue),
                  ),
                  child: const Text(
                    "Add section",
                    style: TextStyle(color: Colors.blue),
                  ),
                )),
            const SizedBox(
              width: 6,
            ),
            Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      side: const BorderSide(color: Colors.grey)),
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
                )),
          ],
        ),
        TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                side: const BorderSide(color: Colors.blue)),
            child: const Text(
              "Enhance Profile",
              style: TextStyle(color: Colors.blue),
            )),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget About() {
    return const Text(
      "As a Computer Networks Engineering student, I have a strong foundation in network protocols.\n My passion for programming extends to being a junior AI/ML Programmer with a focus on Python.   ...see more",
      style: TextStyle(color: Colors.white, fontSize: 15),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ExperienceRecord(String imageUrl, String position, String whereAndType,
      String date, String location, String details) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: Container(
              width: 40,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imageUrl))),
            )),
        Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  position,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  whereAndType,
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                ),
                Text(
                  date,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
                Text(
                  location,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  details,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
                const SizedBox(
                  height: 6,
                )
              ],
            ))
      ],
    );
  }

  Widget EducationRecord(
      String imageUrl, String collageName, String type, String date) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
          flex: 1,
          child: Container(
            width: 40,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imageUrl))),
          )),
      Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                collageName,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                type,
                style: const TextStyle(fontSize: 13, color: Colors.white),
              ),
              Text(
                date,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ],
          ))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: Colors.blueGrey.shade900,
                child: ListView(
                  children: [
                    ProfileHeader(),
                    PaddingLeftRight(ProfileSection()),
                    PaddingLeftRight(Buttons()),
                    SpaceBetweenSections(),
                    SectionHeader("About", false),
                    PaddingLeftRight(About()),
                    SpaceBetweenSections(),
                    SectionHeader("Experience", true),
                    PaddingLeftRight(
                      ExperienceRecord(
                          "images/aamal.png",
                          "Back End Developer",
                          "Aamal اعمال . Full-time",
                          "Jul 2024 - Present . 4 mos",
                          "Baghdad, Baghdad Governorate, Iraq . Hybrid",
                          "As a Backend Developer, I am responsible for designing and implementing the back...see more"),
                    ),
                    PaddingLeftRight(
                      ExperienceRecord(
                          "images/nokia.png",
                          "Summer Internship",
                          "Nokia · Internship",
                          "Jul 2024 - Aug 2024 · 2 mos",
                          "Baghdad, Baghdad Governorate, Iraq . On-site",
                          "-Gained hands-on experience in project management, learning the key processes and strategies...see more"),
                    ),
                    PaddingLeftRight(
                      ExperienceRecord(
                          "images/computiq.png",
                          "Training Assistant, CS50x Course at Heya Tech Program",
                          "Computiq - كومبيوتك · Part-time",
                          "Feb 2024 - Jul 2024 · 6 mosFeb",
                          "Baghdad, Baghdad Governorate, Iraq",
                          "-Coordinated communication between students and the company, ensuring smooth and effe...see more"),
                    ),
                    SpaceBetweenSections(),
                    SectionHeader("Education", true),
                    PaddingLeftRight(EducationRecord(
                        "images/coie.png",
                        "College of Information Engineering, Al-Nahrain University",
                        "Bachelor's degree, Information Technology",
                        "2021 - 2025")),
                  ],
                ))));
  }
}
