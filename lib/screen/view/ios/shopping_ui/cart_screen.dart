import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plateform_convertor/screen/provider/ios_shopping_provider.dart';
import 'package:plateform_convertor/screen/view/ios/shopping_ui/dash_screen.dart';
import 'package:provider/provider.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({Key? key}) : super(key: key);

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  TextEditingController txtname = TextEditingController(text: "Name");
  TextEditingController txtemail = TextEditingController(text: "Email");
  TextEditingController txtadd = TextEditingController(text: "Location");

  @override
  Widget build(BuildContext context) {
    st = Provider.of<Ios_shopping>(context, listen: true);
    sf = Provider.of<Ios_shopping>(context, listen: false);
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 130,
                color: CupertinoColors.systemGrey6,
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Shopping Cart",
                  style: TextStyle(
                      color: CupertinoColors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 28),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  searchbar(
                      txtname,
                      Icon(CupertinoIcons.person_alt,
                          color: CupertinoColors.systemGrey4)),
                  SizedBox(height: 5),
                  searchbar(
                      txtemail,
                      Icon(CupertinoIcons.mail_solid,
                          color: CupertinoColors.systemGrey4)),
                  SizedBox(height: 5),
                  searchbar(
                      txtadd,
                      Icon(CupertinoIcons.location_solid,
                          color: CupertinoColors.systemGrey4)),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(CupertinoIcons.time,
                          color: CupertinoColors.systemGrey4),
                      SizedBox(width: 10),
                      Text("Delivery time",
                          style: TextStyle(
                              fontSize: 18, color: CupertinoColors.systemGrey4)),
                      Spacer(),
                      Text("${st!.time.month}/${st!.time.day}/${st!.time.year}\n${st!.time.hour}:${st!.time.minute}",
                          style: TextStyle(
                              color: CupertinoColors.systemGrey, fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 200,
                    child: CupertinoDatePicker(
                      onDateTimeChanged: (value) {
                        sf!.changetime(value);
                      },
                      initialDateTime: st!.time,
                      mode: CupertinoDatePickerMode.dateAndTime,
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(itemBuilder: (context, index) {
                      return  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Container(
                              width: 65,
                              margin: EdgeInsets.only(right: 10),
                              height: 65,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          "${sf!.cartlist[index].img}"))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("${sf!.cartlist[index].name}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: CupertinoColors.black)),
                                Text("\$${sf!.cartlist[index].price}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: CupertinoColors.systemGrey3)),
                              ],
                            ),
                            Spacer(),
                            Icon(CupertinoIcons.delete,
                                color: CupertinoColors.systemRed, size: 25),
                          ],
                        ),
                      );
                    },itemCount: st!.cartlist.length),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Shipping \$21",style: TextStyle(fontSize: 15,color: CupertinoColors.systemGrey4,fontWeight: FontWeight.w400)),
                          SizedBox(height: 5),
                          Text("Tax \$10",style: TextStyle(fontSize: 15,color: CupertinoColors.systemGrey4,fontWeight: FontWeight.w400)),
                          SizedBox(height: 5),
                          Text("Tax \$4000",style: TextStyle(fontSize: 18,color: CupertinoColors.black,fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  CupertinoTextField searchbar(TextEditingController control, Icon i) {
    return CupertinoTextField(
      controller: control,
      enableSuggestions: true,
      prefix: i,
      cursorColor: CupertinoColors.systemGrey4,
      style: TextStyle(color: CupertinoColors.systemGrey4, fontSize: 15),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: CupertinoColors.systemGrey4))),
    );
  }
}
