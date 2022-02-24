import 'package:devops_test_app/constants/sizeconfig.dart';
import 'package:devops_test_app/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  AppBarWidget({Key? key})
      : preferredSize = Size.fromHeight(getHeight(44.0)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.format_list_bulleted,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: getWidth(200.0),
            child: const TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notification_important,
              color: Colors.black,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  @override
  final Size preferredSize;
}

class DropDownButtonWidget extends StatelessWidget {
  const DropDownButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: const [
        DropdownMenuItem(
          child: Text('OOO "DEVOPS"'),
          value: 'OOO "DEVOPS"',
        ),
        DropdownMenuItem(
          child: Text('OOO "Google"'),
          value: 'OOO "DEVOPS"',
        ),
      ],
      onChanged: (v) {},
      hint: const Text('OOO "DEVOPS"'),
    );
  }
}

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({Key? key, required this.height}) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: height,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(10.0),
          ),
          height: height,
          child: Stack(
            children: [
              Image.network(
                'https://avatars.mds.yandex.net/i?id=894659a4dc97159311db7b359f4224d8-5875829-images-thumbs&n=13',
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(10.0),
                  left: getWidth(20.0),
                ),
                child: const Text('Umumiy balans', style: TextStyle(
                  color: Colors.red,
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(10.0),
                  right: getWidth(20.0),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.format_list_bulleted),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(40.0),
                  left: getWidth(20.0),
                ),
                child: Text(
                  '1 000 000 000 000,00 \$',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: getFont(20.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(100.0),
                  left: getWidth(90.0),
                ),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Qaydlar', style: TextStyle(
                    color: Colors.red,
                  ),),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.cyan,
          ),
          height: height,
          child: Stack(
            children: [
              Image.network(
                'https://avatars.mds.yandex.net/i?id=3856ee0ed5ff94022b7e454349f278bc-5859224-images-thumbs&n=13',
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(10.0),
                  left: getWidth(20.0),
                ),
                child: const Text('Umumiy balans',
                style: TextStyle(
                  color: Colors.white,
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(10.0),
                  right: getWidth(20.0),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.format_list_bulleted),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(40.0),
                  left: getWidth(20.0),
                ),
                child: Text(
                  '1 000 000 000 000,00 \$',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getFont(20.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(100.0),
                  left: getWidth(90.0),
                ),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Qaydlar',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ListViewPage extends StatelessWidget {
  ListViewPage({Key? key, required this.height}) : super(key: key);
  final double height;

  final List<String> words = ['Imzo uchun', "JKX to'lov", 'Hisoblar orasida'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: words.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidth(10.0),
              ),
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0),
                      border: const Border(
                        top: BorderSide(
                          color: Colors.black,
                        ),
                        left: BorderSide(
                          color: Colors.black,
                        ),
                        right: BorderSide(
                          color: Colors.black,
                        ),
                        bottom: BorderSide(
                          color: Colors.black,
                        ),
                      )),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(words[index]),
                  ),
                ),
                onTap: () {},
              ),
            );
          }),
    );
  }
}

class ListViewBuilderTwo extends StatelessWidget {
  const ListViewBuilderTwo({Key? key, required this.transactions})
      : super(key: key);
  final List<TransactionModel> transactions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: transactions[index].transType == 1
                ? const Icon(
                    Icons.arrow_downward,
                    color: Colors.green,
                  )
                : const Icon(
                    Icons.arrow_upward,
                    color: Colors.red,
                  ),
            title: SizedBox(
              width: getWidth(165.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text(
                    transactions[index].companyName!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),),
                  Expanded(child: Text(
                    transactions[index].transType! == 1
                        ? "+${transactions[index].amount} so'm"
                        : "-${transactions[index].amount} so'm",
                    style: TextStyle(
                      color: transactions[index].transType == 1
                          ? Colors.green
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),),
                ],
              ),
            ),
            subtitle: Column(
              children: [
                Row(
                  children: [
                    Text(
                      transactions[index].eventName!,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Amaliyot raqami: ' + transactions[index].number!,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            trailing: Text(transactions[index].time!),
          ),
        );
      },
    );
  }
}

// class ListViewPageTwo extends StatefulWidget {
//   ListViewPageTwo({Key? key, required this.height}) : super(key: key);
//
//   final double height;
//   final List<String> words = ['Hammasi', "Kirimlar", 'Chiqimlar'];
//   static List<bool> bools = [true, false, false];
//
//   @override
//   State<StatefulWidget> createState() => _ListViewPageTwoState();
//
// }
//
// class _ListViewPageTwoState extends State<ListViewPageTwo> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: widget.height,
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: widget.words.length,
//           itemBuilder: (context, index) {
//             return InkWell(
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: ListViewPageTwo.bools[index] ? Colors.black : Colors.transparent,
//                     borderRadius: BorderRadius.circular(20.0),
//                     border: const Border(
//                       top: BorderSide(
//                         color: Colors.black,
//                       ),
//                       left: BorderSide(
//                         color: Colors.black,
//                       ),
//                       right: BorderSide(
//                         color: Colors.black,
//                       ),
//                       bottom: BorderSide(
//                         color: Colors.black,
//                       ),
//                     )
//                 ),
//                 child: Text(widget.words[index]),
//               ),
//               onTap: () {
//                 for (int i = 0; i < ListViewPageTwo.bools.length; i++) {
//                   if (i == index) {
//                     ListViewPageTwo.bools[i] = true;
//                   } else {
//                     ListViewPageTwo.bools[i] = false;
//                   }
//                 }
//                 setState(() {});
//               },
//             );
//           }),
//     );
//   }
// }
