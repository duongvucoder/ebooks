import 'package:flutter/material.dart';
import 'package:project_ebook/common/const.dart';
import 'package:project_ebook/ebook/components/category_carouseslider.dart';
import 'package:project_ebook/ebook/components/build_bottomnavigationbar.dart';
import 'package:project_ebook/ebook/components/category_topic.dart';

class EbookScreen extends StatefulWidget {
  const EbookScreen({super.key});

  @override
  State<EbookScreen> createState() => _EbookScreenState();
}

class _EbookScreenState extends State<EbookScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final tabs = <Widget>[];
  @override
  void initState() {
    super.initState();
    tabs.addAll([
      const Text(
        'Khám phá',
        style: TextStyle(color: Colors.white),
      ),
      const Text(
        'Phổ biến',
        style: TextStyle(color: Colors.white),
      ),
      const Text(
        'Mới nhất',
        style: TextStyle(color: Colors.white),
      ),
    ]);
    _tabController = TabController(
      length: tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: const Text(
          'Trang Chủ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: kPrimaryColorIconsEbook,
          ),
        ],
        backgroundColor: Colors.white,
      ),

      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                height: size.height * 0.04,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade400,
                    border: Border.all(
                      color: kPrimaryColorIconsEbook,
                    )),
                child: TabBar(
                  controller: _tabController,
                  tabs: tabs,
                  labelPadding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  indicator: BoxDecoration(
                      color: kPrimaryColorIconsEbook,
                      borderRadius: BorderRadius.circular(10)),
                  labelColor: Colors.white,
                  labelStyle: const TextStyle(fontSize: 18),
                ) //,
                ),
            Container(
              height: 320,
              //color: Colors.red,
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: const BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(300, 300),
                        bottomRight: Radius.elliptical(300, 300),
                      ),
                    ),
                  ),
                  const CatetoryCarouseSlider(),
                ],
              ),
            ),
            buildSPacingDivder(),
            const CategoryTopic(textTopic: 'Kỹ Năng Mềm'),
            buildSPacingDivder(),
            const CategoryTopic(textTopic: 'Tâm Lý Học'),
            buildSPacingDivder(),
            const CategoryTopic(textTopic: 'Kinh tế - Tài Chính'),
            buildSPacingDivder(),
            const CategoryTopic(textTopic: 'Văn Học Nước Ngoài'),
          ],
        ),
      ),
      bottomNavigationBar: const BuildBottomNavigationBar(),
    );
  }

  Widget buildSPacingDivder() {
    return const Padding(
      padding: EdgeInsets.only(left: 24),
      child: Divider(
        thickness: 1,
      ),
    );
  }
}
