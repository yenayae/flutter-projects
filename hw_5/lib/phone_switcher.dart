import 'package:flutter/material.dart';

class PhoneSwitcher extends StatefulWidget {
  const PhoneSwitcher({super.key});

  @override
  _PhoneSwitcherState createState() => _PhoneSwitcherState();
}

class _PhoneSwitcherState extends State<PhoneSwitcher> {
  bool isAndroid = false;
  static const double BOX_SPACING = 20;
  static const int ANIMATION_DURATION = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phone Switcher',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                duration: Duration(milliseconds: ANIMATION_DURATION),
                curve: Curves.easeInOut,
                width: isAndroid ? 350 : 300,
                height: isAndroid ? 450 : 650,
                decoration: BoxDecoration(
                    color: isAndroid ? Colors.green : Colors.grey[900],
                    borderRadius: BorderRadius.circular(40)),
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: ANIMATION_DURATION),
                      curve: Curves.easeInOut,
                      width: isAndroid ? 80 : 70,
                      height: isAndroid ? 40 : 20,
                      decoration: BoxDecoration(
                          color: isAndroid
                              ? const Color(0xFF112A12)
                              : const Color(0xFF121212),
                          borderRadius: isAndroid
                              ? BorderRadius.circular(20)
                              : BorderRadius.circular(10)),
                    ),


                    Expanded(
                      child:  AnimatedContainer(
                        duration: const Duration(milliseconds: ANIMATION_DURATION),
                        curve: Curves.easeInOut,
                        margin: isAndroid ? const EdgeInsets.symmetric(horizontal: 30) : const EdgeInsets.all(20),
                        child: isAndroid
                            ? Image.network("https://static.vecteezy.com/system/resources/previews/021/514/697/non_2x/android-operating-system-logo-icon-symbol-green-with-name-white-design-software-phone-illustration-with-black-background-free-vector.jpg",)
                            : Image.network("https://i.redd.it/jj6v598pthp81.jpg",

                            
                        ),
                      ),
                    ),
                    

                    AnimatedContainer(
                      duration: const Duration(milliseconds: ANIMATION_DURATION),
                      curve: Curves.easeInOut,
                      width: isAndroid ? 80 : 50,
                      height: isAndroid ? 40 : 50,
                      decoration: BoxDecoration(
                          color: const Color(0xFF737373),
                          borderRadius: isAndroid
                              ? BorderRadius.circular(20)
                              : BorderRadius.circular(100)),
                    ),

                    
                  ],
                )),
            const SizedBox(
              height: BOX_SPACING,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isAndroid = true;
                  });
                },
                child: const Text("Android")),
            const SizedBox(
              height: BOX_SPACING,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    isAndroid = false;
                  });
                },
                child: const Text("iOS")),
          ],
        ),
      ),
    );
  }
}
