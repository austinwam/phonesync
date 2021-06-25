import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Phone sync',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
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
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.connected_tv,
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
                )
              ],
            ))
      ],
    ));
  }
}

class DAtaFiles extends StatelessWidget {
  const DAtaFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text("file name"), Text("size"), Text("phone")],
        ),
        Divider(),
        ListView.separated(
          itemCount: 25,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemBuilder: (BuildContext context, int index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("file name"), Text("size"), Text("phone")],
            );
          },
        )
      ],
    );
  }
}
