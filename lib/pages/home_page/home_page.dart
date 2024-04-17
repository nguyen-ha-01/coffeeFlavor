import 'package:coffeeflavor/bloc/nav_bar_cubit.dart';
import 'package:coffeeflavor/common/widgets/bottom_nav_bar.dart';
import 'package:coffeeflavor/pages/message_page/message_page.dart';
import 'package:coffeeflavor/pages/notification_page/notification_page.dart';
import 'package:coffeeflavor/pages/product_list_page/product_list_page.dart';
import 'package:coffeeflavor/pages/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => NavBarCubit(),
      child: Scaffold(
        body: BlocBuilder<NavBarCubit, NavBarPages>(
          builder: (ctx, state) {
            if (state == NavBarPages.home) return const ProductListPage();
            if (state == NavBarPages.message) return const MessagePage();
            if (state == NavBarPages.notification) return const NotificationPage();
            if (state == NavBarPages.profile) return const ProfilePage();
            return Container();
          },
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
