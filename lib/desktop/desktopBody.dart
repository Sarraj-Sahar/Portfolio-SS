import 'package:flutter/material.dart';
import 'package:port_s/components/navbar/my_logo.dart';
import 'package:port_s/components/navbar/nav_link.dart';
import 'package:port_s/components/sections/1.Home.dart';
import 'package:port_s/components/sections/2.About.dart';
import 'package:port_s/components/sections/3.Work.dart';
import 'package:port_s/components/sections/4.Projects.dart';
import 'package:port_s/components/sections/5.Contact.dart';
import 'package:port_s/components/widgets/myEmail.dart';
import 'package:port_s/components/widgets/mySocials.dart';
import 'package:port_s/components/widgets/myStars.dart';
import '../components/navbar/my_navbar.dart';
import '../utils/colors.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  AutoScrollController? _autoScrollController;

  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController!.hasClients &&
        _autoScrollController!.offset > (160 - kToolbarHeight);
  }

  Future<void> _scrollToIndex(int index) async {
    await _autoScrollController!
        .scrollToIndex(index, preferPosition: AutoScrollPosition.begin);
    _autoScrollController!.highlight(index);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: Axis.vertical,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpaned != false
                ? setState(
                    () {
                      isExpaned = false;
                      print('isExpanded is set to False');
                    },
                  )
                : {}
            : isExpaned != true
                ? setState(() {
                    print('isExpanded is set to True');
                    isExpaned = true;
                  })
                : {},
      );
    super.initState();
  }

  Widget _wrapScrollTag({int? index, Widget? child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController!,
      index: index!,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: myGreyColor,
          extendBody: true,
          body: Stack(children: [
            MyStars(size),
            SingleChildScrollView(
              physics: const ScrollPhysics(),
              primary: true,
              scrollDirection: Axis.vertical,
              child: Column(children: [
                // Text(
                //   "${size.width}",
                //   style: TextStyle(color: Colors.white),
                // ),

                //
                // MyNavBar(size, context),
                ///NAVBAR
                //CHANGEME: change this container of navbar to a SliverAppbar
                //=> will give us the option to dismiss navabr/ show it again on scroll up...
                //many other features like opacity of navbar ON scroll...
                size.width >= 736
                    ? Container(
                        width: size.width,
                        height: size.height * 0.12,
                        decoration: const BoxDecoration(
                          color: myGreyColor,
                          // border: Border(
                          //   bottom: BorderSide(width: 0.1, color: Colors.white),
                          // ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyLogo(),
                              SizedBox(
                                width: size.width * 0.25,
                              ),
                              Expanded(
                                child: DefaultTabController(
                                  length: 4,
                                  child: TabBar(
                                      padding: EdgeInsets.zero,
                                      indicatorPadding: EdgeInsets.zero,
                                      labelPadding: EdgeInsets.zero,
                                      indicatorColor: Colors.transparent,
                                      onTap: (index) async {
                                        _scrollToIndex(index);
                                      },
                                      tabs: [
                                        Tab(
                                          child: MyNavLink(
                                              number: "01. ", title: "About"),
                                        ),
                                        Tab(
                                          child: MyNavLink(
                                              number: "02. ",
                                              title: "Experience"),
                                        ),
                                        Tab(
                                          child: MyNavLink(
                                              number: "03. ",
                                              title: "Projects"),
                                        ),
                                        Tab(
                                          child: MyNavLink(
                                              number: "04. ", title: "Contact"),
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        width: size.width,
                        height: size.height * 0.12,
                        decoration: const BoxDecoration(
                          color: myGreyColor,
                          // border: Border(
                          //   bottom: BorderSide(width: 0.1, color: Colors.white),
                          // ),
                        ),
                        child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  MyLogo(),
                                  SizedBox(
                                    width: size.width * 0.25,
                                  ),
                                ]))),

                Row(
                  children: [
                    //my Socials
                    MySocials(size),

                    //Home
                    Expanded(
                      child: Container(
                        height: size.height - 82,
                        //we wrap our scrollable widget with scrollConfiguration
                        //so we can "hide" our scrollbar
                        child: ScrollConfiguration(
                          behavior: ScrollConfiguration.of(context)
                              .copyWith(scrollbars: false),
                          child: CustomScrollView(
                            controller: _autoScrollController!,
                            slivers: <Widget>[
                              SliverList(
                                delegate: SliverChildListDelegate(
                                  [
                                    HomeHero(size),
                                    SizedBox(
                                      height: size.height * 0.20,
                                    ),
                                    _wrapScrollTag(
                                      index: 0,
                                      child: About(size: size),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.20,
                                    ),

                                    //Experience
                                    _wrapScrollTag(
                                      index: 1,
                                      child: Work(size: size),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.20,
                                    ),

                                    //Projects
                                    _wrapScrollTag(
                                      index: 2,
                                      child: Projects(size: size),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.15,
                                    ),

                                    //Contact
                                    _wrapScrollTag(
                                      index: 3,
                                      child: ContactMe(size: size),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.1,
                                    ),
                                  ],
                                ),
                              ),

                              ///
                            ],
                          ),
                        ),
                      ),
                    ),

                    MyEmail(size),
                  ],
                ),
              ]),
            ),
          ])),
    );
  }
}
