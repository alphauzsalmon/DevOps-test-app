import 'package:devops_test_app/blocs/transaction_bloc/transaction_bloc.dart';
import 'package:devops_test_app/constants/constants.dart';
import 'package:devops_test_app/constants/sizeconfig.dart';
import 'package:devops_test_app/repos/transactions_repository.dart';
import 'package:devops_test_app/screens/home_page/home_page_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBarWidget(),
      body: SingleChildScrollView(child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(20.0),
            ),
            child: SizedBox(
              height: getHeight(30.0),
              child: Row(
                children: const [
                  DropDownButtonWidget(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(5.0),
              left: getWidth(20.0),
              right: getWidth(10.0),
            ),
            child: PageViewWidget(
              height: getHeight(200.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(5.0),
              left: getWidth(20.0),
              right: getWidth(20.0),
            ),
            child: InkWell(
              child: Row(
                children: const [
                  Text('Tezkor dostup'),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(5.0),
              left: getWidth(20.0),
              right: getWidth(20.0),
            ),
            child: ListViewPage(
              height: getHeight(60.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(10.0),
            ),
            child: Divider(
              thickness: getFont(7.0),
            ),
          ),
          SizedBox(
            height: getHeight(320.0),
            width: double.infinity,
            child: BlocProvider<TransactionBloc>(
              create: (context) => TransactionBloc(
                SampleTransActionsRepository(),
              )..add(
                  const LoadTransactions(type: 0),
                ),
              child: BlocBuilder<TransactionBloc, TransactionState>(
                builder: (context, state) {
                  if (state is TransactionError) {
                    return Align(
                      alignment: Alignment.center,
                      child: Text(state.message),
                    );
                  } else if (state is TransactionLoaded) {
                    return Column(
                      children: [
                        Container(
                          height: getHeight(60.0),
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getWidth(20.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: const [
                                    Text('Amaliyotlar lentasi'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: getHeight(30.0),
                                      width: MediaQuery.of(context).size.width -
                                          getWidth(70.0),
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: Constants.words.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              child: Container(
                                                height: getHeight(20.0),
                                                width: getWidth(80.0),
                                                margin: EdgeInsets.only(
                                                  right: getWidth(10.0),
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Constants
                                                            .bools[index]
                                                        ? Colors.black
                                                        : Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
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
                                                  child: Text(
                                                      Constants.words[index],
                                                  style: TextStyle(
                                                    color: Constants.bools[index] ? Colors.white : Colors.black,
                                                  ),),
                                                ),
                                              ),
                                              onTap: () {
                                                for (int i = 0;
                                                    i < Constants.bools.length;
                                                    i++) {
                                                  if (i == index) {
                                                    Constants.bools[i] = true;
                                                  } else {
                                                    Constants.bools[i] = false;
                                                  }
                                                }
                                                BlocProvider.of<
                                                            TransactionBloc>(
                                                        context)
                                                    .add(
                                                  LoadTransactions(type: index),
                                                );
                                              },
                                            );
                                          }),
                                    ),
                                    InkWell(
                                      child: SizedBox(
                                        height: getHeight(30.0),
                                        width: getWidth(30.0),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                                'assets/icons/filter1.png'),
                                            Image.asset(
                                                'assets/icons/filter2.png'),
                                            Image.asset(
                                                'assets/icons/filter3.png'),
                                          ],
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: getHeight(20.0),
                          color: Colors.grey,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getHeight(240.0),
                          color: Colors.white,
                          child: ListViewBuilderTwo(
                            transactions: state.transactions,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const Align(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),),
    );
  }
}
