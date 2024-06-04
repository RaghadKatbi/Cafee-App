import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController name = TextEditingController();
    final TextEditingController phone = TextEditingController();
    final TextEditingController password = TextEditingController();
    final height =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffEEE9DB),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: height*0.32,
                  decoration: const BoxDecoration(
                      color: Color(0xffBDA685),
                      borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(230))),
                ),
                 Positioned(
                  bottom: height*0.04,
                  child: const Text(
                    " Create your\n Account",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: myTextform(
                    hintText: "Enter your Name",
                    key: TextInputType.text,
                    icon: Icons.person,
                    controller: name)),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: myTextform(
                    hintText: "Enter your Phone Number",
                    key: TextInputType.phone,
                    icon: Icons.phone,
                    controller: phone)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: myTextform(
                  hintText: "Enter your Password",
                  key: TextInputType.emailAddress,
                  icon: Icons.password,
                  controller: password),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 36, color: Color(0xffc3b3af)),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0xffc3b3af)),
                    child: Icon(Icons.east_sharp, color: Colors.white),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Container(
                width: height*0.3,
                height: height*0.3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(330)),
                  color: Color(0xffBDA685),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextFormField myTextform(
      {required String hintText,
      required TextInputType key,
      required IconData icon,
      required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      // maxLines: 10,
      textInputAction: TextInputAction.none,
      keyboardType: key,
      cursorColor: Colors.grey,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        //focusColor: Colors.pinkAccent,
        hintText: hintText,
        counterText: '',
        hintStyle: const TextStyle(fontSize: 18),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Color(0x0ff00000))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Color(0x0ff00000))),
        prefixIcon: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
          child: Icon(icon, color: Colors.grey,),
        ),
      ),
    );
  }
}
