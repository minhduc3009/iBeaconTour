import 'package:flutter/material.dart';

class RestaurantInfoScreen extends StatelessWidget {
  const RestaurantInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Information'),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 16,
          ),
          ListTile(
            title: Text('Restaurant Name:'),
            subtitle: Text('1.Hồng Hạnh Quảng Ninh'),
            trailing: Icon(Icons.local_restaurant),
          ),
          Divider(),
          ListTile(
            title: Text('Restaurant Number:'),
            subtitle: Text('0855 066 686'),
            trailing: Icon(Icons.phone),
          ),
          Divider(),
          ListTile(
            title: Text('Restaurant Address:'),
            subtitle: Text(
              'Nhà hàng Hồng Hạnh 2 Quảng Ninh: đường Cột 5 - Hồng Hà - Tp. Hạ Long',
            ),
            trailing: Icon(Icons.description),
          ),
          Divider(),
          SizedBox(
            height: 32,
          ),
          ListTile(
            title: Text('Restaurant Name:'),
            subtitle: Text('2.Ngọc Lục Bảo'),
            trailing: Icon(Icons.local_restaurant),
          ),
          Divider(),
          ListTile(
            title: Text('Restaurant Number:'),
            subtitle: Text('0969.159.888'),
            trailing: Icon(Icons.phone),
          ),
          Divider(),
          ListTile(
            title: Text('Restaurant Address:'),
            subtitle: Text(
              'Bến phà cũ Bãi Cháy, thành phố Hạ Long, Quảng Ninh',
            ),
            trailing: Icon(Icons.description),
          ),
          Divider(),
        ],
      ),
    );
  }
}
