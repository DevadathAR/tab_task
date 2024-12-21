import 'package:flutter/material.dart';
import 'package:tab_task/screen/widget/company.dart';
import 'package:tab_task/screen/widget/names_list.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2, // Number of tabs
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              8.heightBox,
              LayoutBuilder(
                builder: (context, constraints) {
                  final tabWidth =
                      constraints.maxWidth * 0.4; // 40% of screen width
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      color: Colors.grey.shade300,
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      dividerColor: Colors.white.withOpacity(0),
                      tabs: [
                        SizedBox(
                          width: tabWidth,
                          child: const Tab(text: 'Name'),
                        ),
                        SizedBox(
                          width: tabWidth,
                          child: const Tab(text: 'Company'),
                        ),
                      ],
                    ),
                  );
                },
              ),
              16.heightBox,
              Expanded(
                child: TabBarView(
                  children: [
                    NameTab(),
                    CompanyTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


extension CustomWidgetExtensions on num {
  Widget get heightBox => SizedBox(height: toDouble());
  Widget get widthBox => SizedBox(width: toDouble());
}

extension TextStyleExtensions on String {
  Text text({
    double? size,
    Color? color,
    FontWeight? weight,
    TextAlign? align,
  }) {
    return Text(
      this,
      textAlign: align,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
