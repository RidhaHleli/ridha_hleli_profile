import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ridha_hleli/constants.dart';
import 'package:ridha_hleli/screens/components/my_info.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Tunisia",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Tunis",
                    ),
                    AreaInfoText(
                      title: "Date of birth",
                      text: "07/11/1994",
                    ),
                    AreaInfoText(
                      title: "Email",
                      text: "ridhahleli3@gmail.com",
                    ),
                    AreaInfoText(
                      title: "Date of birth",
                      text: "+216 26 648 299",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text("Languages",
                          style: Theme.of(context).textTheme.subtitle2),
                    ),
                    AreaInfoText(
                      title: "Arabic",
                      text: "Native Speaker",
                    ),
                    AreaInfoText(
                      title: "English",
                      text: "Fluent",
                    ),
                    AreaInfoText(
                      title: "Frensh",
                      text: "Fluent",
                    ),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLAOD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            /*async {
                              var url = "Linkedin.com/in/ridhahleli";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw "Cannot load url";
                              }
                            },*/
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            /*async {
                              var url = "Twitter.com/HleliRidha";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw "Cannot load url";
                              }
                            }*/

                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            /*async {
                              var url = "Github.com/RidhaHleli";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw "Cannot load url";
                              }
                            },*/
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
