// ignore_for_file: deprecated_member_use

import 'package:uidesign1to100/export.dart';

class DayOne extends StatelessWidget {
  const DayOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.sp, horizontal: 16.sp),

          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlutterLogo(size: 20),
                    Text(
                      'chrisokoriedev',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              HighlightCyclingText(
                lines: [
                  "HOPE YOU HAVING A",
                  "GOOD TIME SO FAR",
                  "HOW CAN I HELP?",
                ],
                activeStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
                inactiveStyle: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
                switchDuration: const Duration(seconds: 2),
              ),
              GestureDetector(
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (__) => SecondScreen()),
                    ),
                child: GradienActionButton(
                  text: 'I need Designs that make sense',
                ),
              ),
              GestureDetector(
                child: ActionButton(text: 'I\'m a Designer broo'),
              ),
              ActionButton(text: 'Just let me in bro'),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.sp, horizontal: 16.sp),
        child: Column(
          spacing: 20,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(radius: 20, child: FlutterLogo(size: 25)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Need Design?'.toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              spacing: 5,
              children: [
                Text(
                  'ALRIGHT,',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'YOU ARE GETTING',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'CLOSER TO SOME ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'FRESH AHH DESIGNS',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Text(
              'But wait first, what do you need though?',
              style: TextStyle(
                fontSize: 14.px,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            Container(
              width: double.infinity,
              height: 40.h,

              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
                gradient: LinearGradient(
                  colors: [Appcolor.orangeColor, Appcolor.purpleColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You know what I need?? Well...',
                    style: TextStyle(
                      color: Appcolor.whiteColor,
                      fontSize: 15.sp,
                    ),
                  ),
                  Text(
                    'WHOLE FUCKIN \nDESIGN TEAM,',
                    style: TextStyle(
                      color: Appcolor.whiteColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  ActionButton(
                    width: double.infinity,
                    text: 'Book a call',
                    bgColor: Colors.white,
                  ),
                  ActionButton(
                    width: double.infinity,
                    text: 'At least show workings first',
                    bgColor: Colors.grey.withOpacity(0.2),
                    textColor: Appcolor.whiteColor,
                  ),
                  Center(
                    child: Text(
                      'this button will take you to https/chrisokoriedev.com',
                      style: TextStyle(
                        color: Appcolor.whiteColor,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                  Gap(20.sp),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GradienActionButton extends StatelessWidget {
  final String text;
  const GradienActionButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.px,
      height: 45.px,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.orange, Colors.white]),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text, style: TextStyle(fontWeight: FontWeight.w500)),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String text;
  final Color? bgColor;
  final Color? textColor;
  final double? width;
  const ActionButton({
    super.key,
    required this.text,
    this.bgColor,
    this.textColor,
    this.width = 300,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!.px,
      height: 48.px,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bgColor ?? Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: textColor ?? Colors.black,
        ),
      ),
    );
  }
}
