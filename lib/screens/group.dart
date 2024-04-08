import 'package:flutter/material.dart';

class Gr extends StatelessWidget {
  const Gr({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return Scaffold(
        body: SafeArea(
            child: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        // SliverFillRemaining 나중에 이거 함 써봐도 좋을듯
        automaticallyImplyLeading: false,
        // expandedHeight: 200,
        toolbarHeight: 55,
        leadingWidth: 20,
        floating: true,
        // 스크롤 다시 올리면 appbar 보이게 하는거
        snap: true,
        // floating이 활성화 된 순간에 스크롤 멈추는 순간 appbar의 전부를 불러오도록 함.
        pinned: false,
        // 항상 appBar 표시. 기본값은 false인데 이 경우엔 스크롤 올릴떄만 가능.
        //surfaceTintColor:
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: Colors.white,
            // color: const Color.fromARGB(255, 231, 228, 228),
          ),
        ),
        // flexibleSpace 이거 사용하면 스크롤 다시 올릴 때 appbar색 이상하지 않고 계속 하얀색임. 뭐 동적으로 움직일 때나, 가장 위로 스크롤 했을 때 스크롤 바 색 바꿔주려고
        //  사용한다는데, 일단은 flexibleSpace 안 썻을 때, 스크롤 색이 일반 배경 색이랑 안 맞고 약간 분홍색이라 색 지정하려고 해줬음.
        shape: const Border(bottom: BorderSide(color: Colors.grey, width: 20)),
        leading: const Row(
          children: [
            SizedBox(width: 20),
            Text(
              'Group',
              style: TextStyle(
                fontSize: 45,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        actions: const [
          Icon(Icons.search, size: 30),
          Padding(padding: EdgeInsets.only(right: 8)),
          Icon(Icons.menu, size: 9),
          Padding(padding: EdgeInsets.only(right: 10)),
        ],
      ),
    ])));
  }
}
