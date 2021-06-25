import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Phone sync',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.qr_code,
                            size: 30,
                          )),
                      Text(
                        "connect",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.folder,
                            size: 30,
                          )),
                      Text(
                        "files",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings,
                            size: 30,
                          )),
                      Text(
                        "settings",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.donut_large_outlined,
                          size: 30,
                          color: Colors.green,
                        )),
                    Text(
                      "phone: austinphone",
                      style: Theme.of(context).textTheme.headline6,
                    )
                  ],
                ),
                Divider(),
                Text(
                  "Files",
                  style: Theme.of(context).textTheme.headline5,
                ),
                Divider(),
                Container(height: 44.h, child: DataTable()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DataTable extends StatelessWidget {
  const DataTable();

  @override
  Widget build(BuildContext context) {
    return DataTable2(
        columnSpacing: 12,
        horizontalMargin: 12,
        columns: [
          DataColumn2(
            label: Text('Filename'),
            size: ColumnSize.L,
          ),
          DataColumn(
            label: Text('size'),
          ),
          DataColumn(
            label: Text('transfer'),
          ),
          DataColumn(
            label: Text('Column D'),
          ),
          DataColumn(
            label: Text('Column NUMBERS'),
            numeric: true,
          ),
        ],
        rows: List<DataRow>.generate(
            100,
            (index) => DataRow(cells: [
                  DataCell(Text('file $index')),
                  DataCell(Text('$index mb')),
                  DataCell(IconButton(
                    icon: Icon(Icons.upload),
                    onPressed: () {},
                  )),
                  DataCell(Text('d $index')),
                  DataCell(Text('e $index')),
                ])));
  }
}
