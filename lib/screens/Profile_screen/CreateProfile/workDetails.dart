import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import '../../../widgets/long_button.dart';

class WorkDetails extends StatefulWidget {
  @override
  _WorkDetailsState createState() => _WorkDetailsState();
}

class _WorkDetailsState extends State<WorkDetails> {
  Screen? size;
  String? dropdownValue;
  final _formKey = GlobalKey<FormState>();
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);

    final labelTextStyle = Theme.of(context).textTheme.titleSmall!.copyWith(
        fontSize: 16.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
        color: titlecolor);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: size?.hp(15),
          margin: const EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Container(
                  width: size?.wp(87),
                  height: size?.hp(5),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Save',
                      textScaleFactor: 1.25,
                      style: TextStyle(
                        color: thirdColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                vGap(20),
                Container(
                  width: size?.wp(87),
                  height: size?.hp(5),
                  decoration: BoxDecoration(
                      color: White, borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      textScaleFactor: 1.25,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: cblack10,
        appBar: AppBar(
          elevation: 1,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          backgroundColor: whiteColor,
          title: Text(
            "Work Details",
            style: labelTextStyle,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vGap(10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Choose  Board ',
                  hintText: 'Choose  Board ',
                ),
              ),
              vGap(20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Start Date Year',
                  hintText: 'Start Date Year',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black),
                          color: White,
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            underline: SizedBox(),
                            hint: Text("--Start Year--"),
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Drop1', 'Drop2', 'Drop3', 'Drop4']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text('Pursuing'),
                        value: _checkbox,
                        onChanged: (value) {
                          setState(() {
                            _checkbox = !_checkbox;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: White,
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            underline: SizedBox(),
                            hint: Text("--Start Year--"),
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Drop1', 'Drop2', 'Drop3', 'Drop4']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0), child: Container()),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
