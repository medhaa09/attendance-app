<<<<<<< HEAD

=======
import 'package:attendance_app/screens/capturepic.dart';
import 'package:camera/camera.dart';
>>>>>>> eadbc33 (added capture image functionality for registration)
import 'package:flutter/material.dart';


// registration page starts

class RegistrationPage extends StatefulWidget {
  final List<CameraDescription> cameras;
  const RegistrationPage({super.key, required this.cameras});

  @override
  RegistrationPageState createState() => RegistrationPageState();
}

<<<<<<< HEAD
class RegistrationPageState extends State<RegistrationPage>{
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
=======
class RegistrationPageState extends State<RegistrationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

>>>>>>> eadbc33 (added capture image functionality for registration)
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _positionController = TextEditingController();
  final TextEditingController _bloodGroupController = TextEditingController();
  final TextEditingController _employeeIdController = TextEditingController();

 void _nextPage() {
<<<<<<< HEAD
    Navigator.pushNamed(context, '/login');
    // if (_formKey.currentState?.validate() ?? false) {
    //   Navigator.of(context).push(
    //     MaterialPageRoute(builder: (context) =>CapturePicPage(cameras:widget.cameras)),
    //   );
    // }
=======
    if (_formKey.currentState?.validate() ?? false) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) =>CapturePicPage(cameras:widget.cameras)),
      );
    }
>>>>>>> eadbc33 (added capture image functionality for registration)
  }

  void _submit() {
    // submission logic here
    // upload the data and the captured picture
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text(
      //     'Registration',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   backgroundColor: Colors.grey[850],
      // ),
      body:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Police car-rafiki.png",
                  height: 250,
                  width: double.infinity,
                ),
                const Text("Register Here!",
                style: TextStyle(
                  fontFamily: "OpenSans-VariableFont_wdth,wght",
                  color: Color.fromARGB(221, 48, 124, 244),
                  fontSize: 32,
                  fontWeight: FontWeight.w800
                ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("Register Now for Our Facial Attendance App"),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      color: Colors.grey[100],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const TextField(
                    
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Employee ID',
                        contentPadding: EdgeInsets.all(10)),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      color: Colors.grey[100],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Full Name',
                        contentPadding: EdgeInsets.all(10)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            color: Colors.grey[100],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Age',
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            color: Colors.grey[100],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Position',
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Container(
                //   decoration: BoxDecoration(
                //       border: Border.all(
                //         color: Colors.black12,
                //       ),
                //       color: Colors.grey[100],
                //       borderRadius:
                //           const BorderRadius.all(Radius.circular(10))),
                //   child: const TextField(
                //     decoration: InputDecoration(
                //         border: InputBorder.none,
                //         hintText: 'Position',
                //         contentPadding: EdgeInsets.all(10)),
                //   ),
                // ),
                const SizedBox(
                  height: 40,
                ),
                
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                          onPressed: _nextPage,
                          child: const Text('Register'),
                        ),
                ),
                // Form(
                //   key: _formKey,
                //   child: Column(
                //       children: [
                //       TextFormField(
                //         controller: _employeeIdController,
                //         decoration: const InputDecoration(labelText: 'Employee ID'),
                //         validator: (value) {
                //           if (value == null || value.isEmpty) {
                //             return 'Please enter your Employee ID';
                //           }
                //           return null;
                //         },
                //       ),
                //       SizedBox(
                //         height: 10,
                //       ),
                //       Row(
                //         children: [
                //           TextFormField(
                //             controller: _nameController,
                //             decoration: const InputDecoration(
                //               labelText: 'First Name',
                //                border: OutlineInputBorder(
                //                 borderRadius: BorderRadius.all(Radius.circular(10))
                //                )
                //               ),
                //             validator: (value) {
                //               if (value == null || value.isEmpty) {
                //                 return 'Please enter your Name';
                //               }
                //               return null;
                //             },
                //           ),
                //           TextFormField(
                //             // controller: _nameController,
                //             decoration: const InputDecoration(
                //               labelText: 'First Name',
                //                border: OutlineInputBorder(
                //                 borderRadius: BorderRadius.all(Radius.circular(10))
                //                )
                //               ),
                //             validator: (value) {
                //               if (value == null || value.isEmpty) {
                //                 return 'Please enter your Name';
                //               }
                //               return null;
                //             },
                //           ),
                //         ],
                //       ),
                //       SizedBox(
                //         height: 10,
                //       ),
                //       TextFormField(
                //         controller: _ageController,
                //         decoration: const InputDecoration(labelText: 'Age'),
                //         validator: (value) {
                //           if (value == null || value.isEmpty) {
                //             return 'Please enter your Age';
                //           }
                //           return null;
                //         },
                //       ),
                //       TextFormField(
                //         controller: _positionController,
                //         decoration: const InputDecoration(labelText: 'Position'),
                //       ),
                //       TextFormField(
                //         controller: _bloodGroupController,
                //         decoration: const InputDecoration(labelText: 'Blood Group'),
                //       ),
                //       const SizedBox(height: 24),
                //       ElevatedButton(
                //         onPressed: _nextPage,
                //         child: const Text('Next'),
                //       ),
                //     ],
                  
                //     )
                    
                  
                //   ),


                  
              ],
=======
      appBar: AppBar(
        title: const Text(
          'Registration',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey[850],
      ),
      body:
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  TextFormField(
                    controller: _employeeIdController,
                    decoration: const InputDecoration(labelText: 'Employee ID'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Employee ID';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _ageController,
                    decoration: const InputDecoration(labelText: 'Age'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Age';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _positionController,
                    decoration: const InputDecoration(labelText: 'Position'),
                  ),
                  TextFormField(
                    controller: _bloodGroupController,
                    decoration: const InputDecoration(labelText: 'Blood Group'),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: _nextPage,
                    child: const Text('Next'),
                  ),
                ],
              ),
>>>>>>> eadbc33 (added capture image functionality for registration)
            ),
          ),
    );
  }
}

