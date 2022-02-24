import 'package:devops_test_app/blocs/bottom_navigation_bloc/bottom_navigation_bloc.dart';
import 'package:devops_test_app/constants/sizeconfig.dart';
import 'package:devops_test_app/screens/add_page.dart';
import 'package:devops_test_app/screens/comment_page.dart';
import 'package:devops_test_app/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final List<Widget> pages = [
    const HomePage(),
    const AddPage(),
    const CommentPage()
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocProvider<BottomNavigationBloc>(
      create: (context) => BottomNavigationBloc()
        ..add(
          const SetBottomNavigationEvent(0),
        ),
      child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
          return Scaffold(
            body: pages[state.index],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.index,
              backgroundColor: Colors.cyan,
              selectedIconTheme: const IconThemeData(color: Colors.white),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_circle_outline_rounded), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.comment), label: ''),
              ],
              onTap: (int index) {
                BlocProvider.of<BottomNavigationBloc>(context)
                    .add(SetBottomNavigationEvent(index));
              },
            ),
          );
        },
      ),
    );
  }
}
