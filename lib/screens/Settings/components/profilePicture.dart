import 'dart:io';
import 'package:armenu_app/utils/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfilePicture extends StatefulWidget {
  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseStorage _storage = FirebaseStorage.instance;
  File _profileImageFile;
  final _picker = ImagePicker();
  User loggedInUser;
  String loggedInUserName;

  @override
  void initState() {
    getCurrentUser();
    super.initState();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        loggedInUserName = user.displayName;
      }
    } catch (e) {
      print(e);
    }
  }

  Future getImage() async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      final pickedFile = await _picker.getImage(source: ImageSource.gallery);
      final File file = File(pickedFile.path);
      setState(() {
        _profileImageFile = file;
        uploadImage();
      });
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) => CupertinoAlertDialog(
                title: Text('Gallery Permission'),
                content: Text(
                    'This app needs camera access to take pictures for upload user profile photo'),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text('Deny'),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  CupertinoDialogAction(
                    child: Text('Settings'),
                    onPressed: () => openAppSettings(),
                  ),
                ],
              ));
    }
  }

  Future uploadImage() async {
    getCurrentUser();
    String url;
    Reference ref =
        _storage.ref().child('profilePicture/profilePicture$loggedInUserName');
    UploadTask uploadTask = ref.putFile(_profileImageFile);
    uploadTask.then((res) {
      res.ref.getDownloadURL().then((fileURL) => url = fileURL);
      loggedInUser.updateProfile(photoURL: url);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, gradient: mainPrimaryGradient),
            child: CircleAvatar(
                radius: 0,
                backgroundColor: Colors.transparent,
                child: _profileImageFile != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.file(
                          _profileImageFile,
                          width: 140,
                          height: 140,
                          fit: BoxFit.cover,
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: FadeInImage(
                            image: NetworkImage("${loggedInUser.photoURL}"),
                            placeholder:
                                AssetImage('assets/images/ProfilePicture.jpg'),
                            width: 140,
                            height: 140,
                            fit: BoxFit.cover),
                      )),
          ),
          Positioned(
            right: -10,
            bottom: 0,
            child: SizedBox(
              height: 45,
              width: 45,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: Colors.white),
                ),
                color: Color(0xFFF5F6F9),
                onPressed: getImage,
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
