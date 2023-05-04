import 'package:flutter/material.dart';

class HotelInfoScreen extends StatelessWidget {
  const HotelInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel Information'),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 16,
          ),
          ListTile(
            title: Text('Hotel Name:'),
            subtitle: Text('1.Grand View Palace Hạ Long'),
            trailing: Icon(Icons.local_hotel),
          ),
          Divider(),
          ListTile(
            title: Text('Hotel Number:'),
            subtitle: Text('0943 333 333 '),
            trailing: Icon(Icons.phone),
          ),
          Divider(),
          ListTile(
            title: Text('Hotel Address:'),
            subtitle: Text(
              'Đường Trần Thái Tông, Tổ 6 khu 6 P, Thành phố Hạ Long, Quảng Ninh.',
            ),
            trailing: Icon(Icons.description),
          ),
          Divider(),
          SizedBox(
            height: 32,
          ),
          ListTile(
            title: Text('Hotel Name:'),
            subtitle: Text('2.D’Lioro Hotel – khách sạn Hạ Long'),
            trailing: Icon(Icons.local_hotel),
          ),
          Divider(),
          ListTile(
            title: Text('Hotel Number:'),
            subtitle: Text('025 7777 7777'),
            trailing: Icon(Icons.phone),
          ),
          Divider(),
          ListTile(
            title: Text('Hotel Address:'),
            subtitle: Text(
              'Bãi Cháy, Thành phố Hạ Long, Quảng Ninh.',
            ),
            trailing: Icon(Icons.description),
          ),
          Divider(),
        ],
      ),
    );
  }
}
