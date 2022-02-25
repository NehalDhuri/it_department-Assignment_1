// ignore_for_file: deprecated_member_use, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you want 3 dot menu
              color: Colors.blue.shade300,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "Vision",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "About Department",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              onSelected: (value) => {
                if (value == 0)
                  mission(context)
                else if (value == 1)
                  about(context)
              },
            ),
          ),
          title: Text("Welcome To IT Department"),
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/FAMT.jpg",
                  // fit: BoxFit.contain,
                  // height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          child: Text('Web Lab'),
                          padding: EdgeInsets.all(20),
                          color: Colors.blue,
                          textColor: Colors.white,
                          onPressed: () => LAB1(context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          child: Text('BI Lab'),
                          padding: EdgeInsets.all(20),
                          color: Colors.blue,
                          textColor: Colors.white,
                          onPressed: () => LAB2(context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          child: Text('MAD and PWA Lab'),
                          padding: EdgeInsets.all(20),
                          color: Colors.blue,
                          textColor: Colors.white,
                          onPressed: () => LAB3(context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          child: Text('Sensor Lab'),
                          padding: EdgeInsets.all(20),
                          color: Colors.blue,
                          textColor: Colors.white,
                          onPressed: () => LAB4(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('Contact Us'),
                    padding: EdgeInsets.all(20),
                    onPressed: () => contactUs(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          // content: Text('Mail us at hodit@famt.ac.in'),
          content: Text(
              'Email ID: hodit@famt.ac.in\n\nAddress: FAMT, P- 60, P- 60/1, MIDC, Mirjole Block, Ratnagiri - 415639\n\nPhone No: 7559463770'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Web Lab '),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1637922115phpDFaiyx.jpeg',
                height: 350,
                width: 800,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 10.0),
                child: Text(
                  "Lab Objectives",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
              ),
              Text(
                  '''1) Open Source Tool for Web Analytics and Semantic Web. \n2) Programming in TypeScript for designing Web Applications. \n3) Angular Framework for Single Page Web Application. \n4) AJAX for Rich Internet Application. \n5) REST API and MongoDB for Frontend and Backend Connectivity.\n6) Flask Framework for building Web Applications.'''),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To BI Lab'),
          scrollable: true,
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1547198350phpWXQrB0.jpeg',
                height: 350,
                width: 800,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  "Lab Objectives",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150.0),
                child: Text(
                    "1)Identify sources of Data for mining and perform data exploration. \n2)Organize and prepare the data needed for data mining algorithms in terms of attributes and class inputs, training, validating, and testing files \n3)Implement the appropriate data mining methods like classification, clustering or association mining on large data sets using open-source tools like WEKA \n4)Implement various data mining algorithms from scratch using languages like Python/ Java etc. \n5)Evaluate and compare performance of some available BI packages \n6)Apply BI to solve practical problems: Analyze the problem domain, use the data collected in enterprise apply the appropriate data mining technique, interpret and visualize the results and provide decision support"),
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable: true,
          title: Text('Welcome To MAD and PWA Lab'),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1585826982php0LbPhv.jpeg',
                height: 350,
                width: 800,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  "Lab Objectives",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:150.0),
                child: Text(
                    "1)Learn the basics of the Flutter framework. \n2)Develop the App UI by incorporating widgets, layouts, gestures and animation \n3)Create a production ready Flutter App by including files and firebase backend service. \n4)Learn the Essential technologies, and Concepts of PWAs to get started as quickly and efficiently as possible \n5)Develop responsive web applications by combining AJAX development techniques with the jQuery JavaScript library. \n6)Understand how service workers operate and also learn to Test and Deploy PWA."),
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB4(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Sensor Lab'),
          scrollable: true,
          content: Column(
            children: [
              Image.asset(
                'assets/images/Sensor-Lab.jpg',
                height: 350,
                width: 800,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  "Lab Objectives",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
              ),
              Text(
                "1)Learn various communication technologies, Microcontroller boards and sensors. \n2)Design the problem solution as per the requirement analysis done using sensors and technologies. \n3)Study the basic concepts of programming/sensors/ emulators. \n4)Design and implement the mini project intended solution for project based earning. \n5)Build, test and report the mini project successfully. \n6)Improve the team building, communication and management skills of the students.",
                maxLines: 45,
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void mission(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // title: Text('Welcome To Vision'),
          content: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  "assets/images/Finolex-Academy-of-Management-and-Technology-Ratnagiri-2.png",
                ),
              ),
              Text(
                "Vision",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                  "\n To provide excellent Information Technology  education and aspire to nurture students as leaders who are in tune with global IT Trends"),
              Text(
                "\n Mission",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                  "\n M1) To Enrich students by rigorously implementing quality education\n M2)To make students industry ready \n M3) To imbibe professional ethics and social values in the students and make them responsible citizens."),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void about(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('About Information Technology'),
          scrollable: true,
          content: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  "assets/images/Information-Technology-Block.jpeg-1.webp",
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                child: Text(
                    '''Recent advancements in the areas of computers, software, networks, internet, communication technology, Big Data, and cloud computing, etc. have made a huge amount of information available to us. In this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. The emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics, and Soft Computing. Currently, the department’s infrastructure contains three classrooms, six laboratories, a staff room, and a seminar hall. Ole classroom is ICT enabled with a Wi-Fi projection facility. All floors of the IT department have Wi-Fi connectivity.
                    The computing facility in the department includes 155 computers with the latest configuration, and other ICT equipment such as LCD projectors, printers and scanners, and UPS backup. Dr. Vinayak A Bharadi and Prof. Santosh V Jadhav got an NVIDIA GPU Research Grant of Rs. 1.5 Lacs in the form of Titan X Pascal GPU (Graphics Processing Unit) to support research. The Information Technology department also has academic collaboration with NVIDIA for three subjects namely Soft Computing, Big Data Analytics, and Robotics. They will provide course material and hardware support for the conduction of these courses as well as bridge courses under the NVIDIA Developer Center. It Department has conducted Bridge courses in Mobile Cloud Computing, MongoDB Connectivity, Online Payments for E-Biz to make students industry-ready. Besides this IT Department has done a tie-up with Microsoft for conducting Training and Certification under Microsoft Virtual Academy (MVA) for students as well as staff in the domain of IoT and Cyber Security. Department has MoU with Amazon AWS to setup Amazon AWS Academy for the professional training and Certification of the staff and the students, AWS will be giving 50% discount for all the certification and free training for the faculty member under this MoU.
                    Students undergo on-field projects so that they can be prepared to face professional challenges. Faculty members and students have published more than 500 papers are in national and international conferences and UGC Approved Journals. Research areas of published works are Cloud Computing, Ubiquitous Computing, Pervasive Computing, Soft computing, etc. Besides this, students are given in house training of GATE examination, aptitude, and other competitive examinations. To make students eligible for international placements and skills required in the MNCs IT Department has signed MoU with Apple Inc. to sept up Apple iOS Developer University Program (iDUP), Apple has provided the Programming platform and training under the same. The department has also set up an Intel Intelligent Systems lab in collaboration with Intel Inc. This lab has hardware and software setup to carry out application development for Smart City Projects, in the domain of the Internet of Things. 


Thank You,

Dr. Vinayak Ashok Bharadi.

HoD –IT, Associate Professor

FAMT, Ratnagiri'''),
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}
