import 'package:flutter/material.dart';

class StackOverFlowUI extends StatefulWidget {
  @override
  State<StackOverFlowUI> createState() => _StackOverFlowUIState();
}

class _StackOverFlowUIState extends State<StackOverFlowUI>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          height: 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.topLeft,
              colors: [
                Color(0xFFd1539d),
                Color(0xFF36a4e2),
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                  child: Center(
                child: RichText(
                  text: const TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: " Tik Save+",
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.tiktok,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: bottomMenu(),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: Colors.grey[800],
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        tabs: const [
                          Tab(
                            text: 'Videos',
                          ),
                          Tab(
                            text: 'Collections',
                          ),
                          Tab(
                            text: 'Users',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          const Center(
                            child: Text(
                              'Videos',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Center(
                            child: Text(
                              'Collections',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Users",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ),
                                    borderSide: const BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 25,
                                    color: Colors.grey[900],
                                  ),
                                  isDense: true,
                                  fillColor: Colors.grey[400],
                                  filled: true,
                                  hintText: "Search",
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                color: const Color(0xFFf8f8f8),
                                elevation: 5,
                                shadowColor: const Color(0xFFe4e4e4),
                                child: const ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assets/images/Alina.jpg',
                                    ),
                                  ),
                                  title: Text(
                                    "Alina S.",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "@alina.sde1",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                color: const Color(0xFFf8f8f8),
                                elevation: 5,
                                shadowColor: const Color(0xFFe4e4e4),
                                child: const ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assets/images/Maria.jpg',
                                    ),
                                  ),
                                  title: Text(
                                    "Maria R.",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "@maria.r2",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                color: const Color(0xFFf8f8f8),
                                elevation: 5,
                                shadowColor: const Color(0xFFe4e4e4),
                                child: const ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assets/images/Joseph.jpg',
                                    ),
                                  ),
                                  title: Text(
                                    "Joseph P.",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "@joseph.fdz",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.tag),
              const Icon(Icons.workspace_premium),
              const Icon(Icons.more),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomMenu() {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.topLeft,
          colors: [
            Color(0xFFd1539d),
            Color(0xFF36a4e2),
          ],
        ),
      ),
      child: const TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            text: "Home",
            icon: Icon(Icons.home_outlined),
          ),
          Tab(
            text: "Hashtags",
            icon: Icon(Icons.tag_outlined),
          ),
          Tab(
            text: "Pro",
            icon: Icon(Icons.workspace_premium),
          ),
          Tab(
            text: "More",
            icon: Icon(Icons.more_rounded),
          ),
        ],
      ),
    );
  }
}
