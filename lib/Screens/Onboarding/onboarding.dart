import 'package:flutter/material.dart';

import '../../Widget/custom_button.dart';
import 'pages.dart';


class OnBoardingPage extends StatefulWidget {
  final List<Pages> boardingPages;
  final String? appName;

  final VoidCallback? continueProcess;
  final VoidCallback? skip;

  ///On Boarding constructor
  OnBoardingPage(this.boardingPages,
      {this.appName = '', this.skip, this.continueProcess});
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  List<int> selectedIndex = [0];
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
            onTap: widget.skip,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: PageView(
                onPageChanged: (int value) {
                  if (selectedIndex.contains(value)) {
                    selectedIndex.remove(value);
                  } else {
                    selectedIndex.add(value);
                  }
                  setState(() {
                    currentIndex = value;
                  });
                },
                controller: controller,
                children: widget.boardingPages,
              ),
            ),

            //indicator

            Container(
              margin: const EdgeInsets.only(top: 50, bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  widget.boardingPages.length,
                      (int index) {
                    return Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                        // border: Border.all(color: AppColor.primaryColor),
                          color: selectedIndex.contains(index)
                              ?  Colors.green
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    );
                  },
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: customButton(
                context,
                onTap: () {
                  if ((currentIndex + 1) == widget.boardingPages.length) {
                    ///Go to login page
                    widget.continueProcess!.call();
                  } else {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn);
                  }
                },
                text: (currentIndex + 1) == widget.boardingPages.length
                    ? "GET STARTED"
                    : "NEXT",
                textColor: Colors.white,
                bgColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
