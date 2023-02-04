import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:padeprokan/screens/auth/login.dart';
import 'package:padeprokan/screens/docs&file/appbar.dart';
import 'package:padeprokan/screens/docs&file/docsfile.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';


class Docsfile extends StatefulWidget {
  const Docsfile({super.key});

  @override
  State<Docsfile> createState() => _DocsfileState();
}

class _DocsfileState extends State<Docsfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, 'Docs & file'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(color: Colors.purple, width: 0.5),
              ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    fillColor: Colors.purple[700],
                    hintText: "search",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ),
          Getimage(),
        ],
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.orange,
        child: Icon(Icons.add, color: Colors.white,),
        activeChild: Icon(Icons.close,color: Colors.white,),
        children: [
          SpeedDialChild(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.orange,
            label: 'New File Txt',
            labelBackgroundColor: Colors.black,
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {
                showDialog(context: context,
                 builder:  (context) => AlertDialog(
                  title: Row(
                          children: [
                            Text(
                              'Embed Link From google drive',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: IconButton(
                                alignment: Alignment.topRight,
                                onPressed: () => Navigator.of(context).pop(),
                                icon: Icon(Icons.close),
                              ),
                            ),
                          ],
                        ),
                        content: Container(
                          height: 280,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(
                                  color: Colors.black,
                                  height: 2,
                                  thickness: 0.5,
                                  indent: 2,
                                  endIndent: 2,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('File name'),
                                SizedBox(height: 5),
                                Container(
                                  height: 47,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      hoverColor: Colors.purple,
                                      hintText: 'Untitled',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('Embed link'),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 47,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      hintText:
                                          'e.g.https://drive.google.com/open?id=1cMc-qT_W..',
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Divider(
                                  color: Colors.black,
                                  height: 1,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Spacer(),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: TextButton(
                                                onPressed: () => Navigator.of(context).pop(),
                                                child: Text(
                                                  'Cancel',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border:
                                              Border.all(color: Colors.purple)),
                                      
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) => AppBar(),
                                            ));
                                          },
                                          child: Text('submit',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                      ),
                                  
                                  ],
                                ),
                              ]),
                        ),
                 ),
                 );
              },
               icon: Icon(Icons.upload_file,
               color: Colors.white,))
          ),
          SpeedDialChild(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.orange,
            label: 'Add Folder',
            labelBackgroundColor: Colors.black,
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {
                showDialog(context: context, 
                builder: (context) =>AlertDialog(
                  title: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                            children: [
                              Text(
                                'Upload files',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 230,
                              ),
                              IconButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                   icon: Icon(Icons.close)),
                            ],
                          ),
                  ),
                        content: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              color: Colors.grey.shade200),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.close),
                                  Text(
                                    'Click or drag file to this area to upload',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Support for a singel or bulk upload. Strictly prohibit',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  Text(
                                    'from uploading company data or other band files',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                                       actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Spacer(),
                Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black)),
                        child: TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Submit', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            )
                                       ]
                ) ,);
              }, 
              icon: Icon(Icons.create_new_folder_outlined, color: Colors.white,))
          ),
          SpeedDialChild(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.orange,
            label: 'Upload File',
            labelBackgroundColor: Colors.black,
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {
                showDialog(
                  context: context, 
                  builder: (context) => AlertDialog(
                    title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'File name',
                              textAlign: TextAlign.start,
                            ),
                            Divider(
                              color: Colors.black,
                              height: 2,
                              thickness: 0.5,
                              indent: 2,
                              endIndent: 2,
                            ),
                          ],
                        ),
                        content: Container(
                          height: 150,
                          width: 350,
                          child: Column(
                            children: [
                              DecoratedBox(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white)),
                                child: TextField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 7,
                                  decoration: InputDecoration.collapsed(
                                    border: InputBorder.none,
                                    hintText: 'Write your document here',
                                    hintStyle: TextStyle(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Spacer(),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: TextButton(
                                          onPressed: () => Navigator.of(context).pop(),
                                          child: Text(
                                            'Cancel',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.green)),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.file_copy,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Save & publish',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                  ),);
              }, 
              icon: Icon(Icons.cloud_upload_outlined, color: Colors.white,))
          ),
          SpeedDialChild(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.orange,
            label: 'Google Drive',
            labelBackgroundColor: Colors.black,
            labelStyle: TextStyle(
              color: Colors.white
            ),
            child: IconButton(
              onPressed: () {
                showDialog(
                  context: context, 
                  builder: (context) => AlertDialog(
                    title: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: [
                            Text('Add Folder'),
                            SizedBox(
                              width: 240,
                            ),
                            IconButton(onPressed: () => Navigator.of(context).pop(), icon: Icon(Icons.close)),
                          ],
                        ),
                    ),
                      content: Container(
                        height: 40,
                        width: 400,
                        child: 
                         
                            TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple)),
                            hintText: 'Email',
                      ),
                      ),
                      ),
                        actions: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Spacer(),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: TextButton(
                                        onPressed: () => Navigator.of(context).pop(),
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.purple)),
                              child: TextButton(
                                onPressed: () {},
                                child: Text('Submit',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        )
                      ],
                  ),
                  );
              }, 
              icon: Icon(Icons.add_to_drive_outlined, color: Colors.white,),)
          ),
        ],
      ),
    );
  }
}

class Getimage extends StatefulWidget {
  const Getimage({super.key});

  @override
  State<Getimage> createState() => _GetimageState();
}

class _GetimageState extends State<Getimage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            'assets/images/docs.png',
            width: MediaQuery.of(context).size.width / 2,
          ),
          Text(
            "You don't have any file!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
