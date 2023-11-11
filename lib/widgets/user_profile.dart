import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserProfile extends StatelessWidget {
  List<MenuRowData> firstMenuRow = [
    MenuRowData(Icons.favorite_outline, 'Izbrannoye'),
    MenuRowData(Icons.call_end, 'Zvonki'),
    MenuRowData(Icons.computer_rounded, 'Ustroystva'),
    MenuRowData(Icons.airplane_ticket, 'GavnoBAZA'),
  ];
  List<MenuRowData> secondMenuRow = [
    MenuRowData(Icons.notifications, 'Uvedomleniya'),
    MenuRowData(Icons.privacy_tip_outlined, 'Konfidence'),
    MenuRowData(Icons.date_range_outlined, 'Dannye'),
    MenuRowData(Icons.apartment_outlined, 'Oformleniye'),
    MenuRowData(Icons.language_outlined, 'Language'),
    MenuRowData(Icons.sticky_note_2_outlined, 'STICKER-LAND'),
  ];
  List<MenuRowData> thirdMenuRow = [
    MenuRowData(Icons.lock_clock, 'CHROME'),
  ];
  List<MenuRowData> fourthMenuRow = [
    MenuRowData(Icons.help, 'HELP ME'),
    MenuRowData(Icons.question_answer_outlined,
        'Что ты знаешь про Телеграм, пацаненок'),
  ];

  UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Vystroyki'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            const _UserInfo(),
            const SizedBox(height: 100),
            _MenuWidget(menuRow: firstMenuRow),
            const SizedBox(height: 100),
            _MenuWidget(menuRow: secondMenuRow),
            const SizedBox(height: 100),
            _MenuWidget(menuRow: thirdMenuRow),
            const SizedBox(height: 100),
            _MenuWidget(menuRow: fourthMenuRow),
          ],
        ),
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data.icon),
          const SizedBox(width: 16),
          Expanded(child: Text(data.text)),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.lime,
          width: double.infinity,
          child: const Column(
            children: [
              SizedBox(height: 30),
              _AvatarWidget(),
              SizedBox(height: 30),
              _UserNameWidget(),
              SizedBox(height: 10),
              _UserPhoneWidget(),
              SizedBox(height: 10),
              _UserLozungWidget(),
            ],
          ),
        ),
        const Positioned(
          top: 20,
          right: 20,
          child: Text(
            'Button CHANGE',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }
}

class _UserLozungWidget extends StatelessWidget {
  const _UserLozungWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'ОБЕЗЬЯНЫ АТАКУЮТ',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+38 050 4848948',
      style: TextStyle(
        color: Colors.purple,
        fontSize: 20,
      ),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Виталий Александрович',
      style: TextStyle(
        color: Colors.greenAccent,
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
