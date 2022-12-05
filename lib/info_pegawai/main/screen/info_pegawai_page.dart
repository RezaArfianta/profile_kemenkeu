import 'package:profilekemenkeu/info_pegawai/cari_pegawai/screen/cari_pegawai_page.dart';
import 'package:profilekemenkeu/info_pegawai/data_pokok/screen/data_pokok_page.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/screen/riwayat_page.dart';
import 'package:flutter/material.dart';

class InfoPegawaiPage extends StatefulWidget {
  @override
  _InfoPegawaiPageState createState() => _InfoPegawaiPageState();
}

class _InfoPegawaiPageState extends State<InfoPegawaiPage> {
  PageController pageController = PageController();
  static const List<Widget> _widgetOptions = [
    DataPokokPage(),
    RiwayatPage(),
    CariPegawaiPage(),
  ];
  final List<String> _tabs = ['Data Pokok', 'Riwayat', 'Cari Pegawai'];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_tabs[_selectedIndex]),
      // ),
      body: PageView(
        controller: pageController,
        onPageChanged: _onPageChanged,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.list), label: 'Data Pokok'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'Riwayat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Cari Pegawai'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    pageController.jumpToPage(index);
  }
}
