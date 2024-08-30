// ignore_for_file: file_names, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({Key? key}) : super(key: key);

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool toggleValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tomorrow',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedContainer(
                  alignment: Alignment.center,
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                  height: 40.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: toggleValue ? Colors.greenAccent : Colors.redAccent,
                  ),
                  child: Stack(
                    children: <Widget>[
                      AnimatedPositioned(
                        duration: const Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.easeIn,
                        top: 3.0,
                        left: toggleValue ? 60.0 : 0.0,
                        right: toggleValue ? 0.0 : 60.0,
                        child: InkWell(
                          onTap: toggleButton,
                          child: AnimatedSwitcher(
                            duration: const Duration(
                              milliseconds: 500,
                            ),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return RotationTransition(
                                  turns: animation, child: child);
                            },
                            child: toggleValue
                                ? Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                    size: 35.0,
                                    key: UniqueKey(),
                                  )
                                : Icon(
                                    Icons.remove_circle_outline,
                                    color: Colors.red,
                                    size: 35.0,
                                    key: UniqueKey(),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
