import 'package:flutter/material.dart';

class TaxiInfoScreen extends StatelessWidget {
  const TaxiInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taxi Information'),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 16,
          ),
          ListTile(
            title: Text('Taxi Model:'),
            subtitle: Text('Mai Linh'),
            trailing: Icon(Icons.directions_car),
          ),
          Divider(),
          ListTile(
            title: Text('Taxi Number: Cẩm Phả'),
            subtitle: Text('0203.731.731'),
            trailing: Icon(Icons.phone),
          ),
          Divider(),
          ListTile(
            title: Text('Taxi Number: Hạ Long'),
            subtitle: Text('0203.628.628'),
            trailing: Icon(Icons.phone),
          ),
          Divider(),
          ListTile(
            title: Text('Taxi Address:'),
            subtitle: Text(
              'Tổ 10, khu 4, Bãi Cháy, tp Hạ Long, Quảng Ninh',
            ),
            trailing: Icon(Icons.description),
          ),
          Divider(),
          SizedBox(
            height: 32,
          ),
          ListTile(
            title: Text('Taxi Model:'),
            subtitle: Text('Sao Quảng Ninh '),
            trailing: Icon(Icons.directions_car),
          ),
          Divider(),
          ListTile(
            title: Text('Taxi Number:'),
            subtitle: Text('020.382.2822'),
            trailing: Icon(Icons.phone),
          ),
          Divider(),
          ListTile(
            title: Text('Taxi Address:'),
            subtitle: Text(
              '126, Tô Hiến Thành, phường Trần Hưng Đạo, Hạ Long, Quảng Ninh ',
            ),
            trailing: Icon(Icons.description),
          ),
          Divider(),
        ],
      ),
    );
  }
}
