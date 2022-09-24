import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/main.dart';

class Accent extends StatefulWidget {
  const Accent({Key? key}) : super(key: key);
  @override
  _Accent createState() => _Accent();
}

class _Accent extends State<Accent> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Center(
      //child: Text('Accent Page'),
      //)

      /*body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        }),
*/
      body: new ListView(
        children: [
          Card(
              child: ListTile(
                  //title: Text("Accent Item 1"),
                  title: Text(
                      "Checking out if the long sentence is correctly writting on."))),
          Card(
            child: ListTile(
              title: Text("I want to buy this :\nE-guh Ju-E-so"),
            ),
          ),
          Card(
              child: ListTile(
            title: Text("List Item 3"),
          )),
          Card(
              child: ListTile(
            title: Text("List Item 4"),
          )),
          Card(
              child: ListTile(
            title: Text("List Item 5"),
          )),
        ],
        shrinkWrap: true,
        /*padding: const EdgeInsets.all(20.0),
          children: List.generate(choices.length, (index) {
            return Center(
              child: ChoiceCard(choice: choices[index], item: choices[index]),
            );
          })*/
      ),
    );
  }
}
/*
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';
=======
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(
      title:
          'This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car.',
      icon: Icons.directions_car),
  const Choice(
      title:
          'This is a Bicycle, because its a Bicycle. So, it\'s a Bicycle. This is a Bicycle, because its a Bicycle. So, it\'s a Bicycle. This is a Bicycle, because its a Bicycle. So, it\'s a Bicycle.',
      icon: Icons.directions_bike),
  const Choice(
      title: 'This is a Boat, because its a Boat. So, it\'s a Boat',
      icon: Icons.directions_boat),
  const Choice(
      title: 'This is a Bus, because its a Bus. So, it\'s a Bus',
      icon: Icons.directions_bus),
  const Choice(
      title: 'This is a Train, because its a Train. So, it\'s a Train',
      icon: Icons.directions_railway),
  const Choice(
      title: 'This is a Walk, because its a Walk. So, it\'s a Walk',
      icon: Icons.directions_walk),
  const Choice(
      title:
          'This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car.',
      icon: Icons.directions_car),
  const Choice(
      title: 'This is a Car, because its a car. So, it\'s a car',
      icon: Icons.directions_car),
  const Choice(
      title: 'This is a Bicycle, because its a Bicycle. So, it\'s a Bicycle',
      icon: Icons.directions_bike),
  const Choice(
      title: 'This is a Boat, because its a Boat. So, it\'s a Boat',
      icon: Icons.directions_boat),
  const Choice(
      title: 'This is a Bus, because its a Bus. So, it\'s a Bus',
      icon: Icons.directions_bus),
  const Choice(
      title: 'This is a Train, because its a Train. So, it\'s a Train',
      icon: Icons.directions_railway),
  const Choice(
      title: 'This is a Walk, because its a Walk. So, it\'s a Walk',
      icon: Icons.directions_walk),
  const Choice(
      title:
          'This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car.',
      icon: Icons.directions_car),
  const Choice(
      title: 'This is a Car, because its a car. So, it\'s a car',
      icon: Icons.directions_car),
  const Choice(
      title: 'This is a Bicycle, because its a Bicycle. So, it\'s a Bicycle',
      icon: Icons.directions_bike),
  const Choice(
      title: 'This is a Boat, because its a Boat. So, it\'s a Boat',
      icon: Icons.directions_boat),
  const Choice(
      title: 'This is a Bus, because its a Bus. So, it\'s a Bus',
      icon: Icons.directions_bus),
  const Choice(
      title:
          'This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car. This is a Car, because its a car. So, it\'s a car.',
      icon: Icons.directions_car),
  const Choice(
      title: 'This is a Train, because its a Train. So, it\'s a Train',
      icon: Icons.directions_railway),
  const Choice(
      title: 'This is a Walk, because its a Walk. So, it\'s a Walk',
      icon: Icons.directions_walk),
  const Choice(
      title: 'This is a Car, because its a car. So, it\'s a car',
      icon: Icons.directions_car),
  const Choice(
      title: 'This is a Bicycle, because its a Bicycle. So, it\'s a Bicycle',
      icon: Icons.directions_bike),
  const Choice(
      title: 'This is a Boat, because its a Boat. So, it\'s a Boat',
      icon: Icons.directions_boat),
  const Choice(
      title: 'This is a Bus, because its a Bus. So, it\'s a Bus',
      icon: Icons.directions_bus),
  const Choice(
      title: 'This is a Train, because its a Train. So, it\'s a Train',
      icon: Icons.directions_railway),
  const Choice(
      title: 'This is a Walk, because its a Walk. So, it\'s a Walk',
      icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {required Key key,
      required this.choice,
      required this.onTap,
      required this.item,
      this.selected: false})
      : super(key: key);
  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    //if (selected)
    //textStyle = textStyle(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.topLeft,
                child: Icon(
                  choice.icon,
                  size: 80.0,
                  color: textStyle?.color,
                )),
            new Expanded(
                child: new Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.topLeft,
              child: Text(
                choice.title,
                style: null,
                textAlign: TextAlign.left,
                maxLines: 5,
              ),
            )),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}
*/
/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 1,
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      ),
    );
  }
}
*/
/*
import 'package:flutter/material.dart';
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Code Sample';
=======
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: ListTileSelectExample(),
    );
  }
}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
class ListTileSelectExample extends StatefulWidget {
  const ListTileSelectExample({super.key});
  @override
  ListTileSelectExampleState createState() => ListTileSelectExampleState();
}
=======
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34

class ListTileSelectExample extends StatefulWidget {
  const ListTileSelectExample({super.key});

  @override
  ListTileSelectExampleState createState() => ListTileSelectExampleState();
}

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
class ListTileSelectExampleState extends State<ListTileSelectExample> {
  bool isSelectionMode = false;
  final int listLength = 30;
  late List<bool> _selected;
  bool _selectAll = false;
  bool _isGridMode = false;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
  @override
  void initState() {
    super.initState();
    initializeSelection();
  }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  void initializeSelection() {
    _selected = List<bool>.generate(listLength, (_) => false);
  }
=======
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34

  void initializeSelection() {
    _selected = List<bool>.generate(listLength, (_) => false);
  }

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
  @override
  void dispose() {
    _selected.clear();
    super.dispose();
  }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'ListTile selection',
          ),
          leading: isSelectionMode
              ? IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      isSelectionMode = false;
                    });
                    initializeSelection();
                  },
                )
              : const SizedBox(),
          actions: <Widget>[
            if (_isGridMode)
              IconButton(
                icon: const Icon(Icons.grid_on),
                onPressed: () {
                  setState(() {
                    _isGridMode = false;
                  });
                },
              )
            else
              IconButton(
                icon: const Icon(Icons.list),
                onPressed: () {
                  setState(() {
                    _isGridMode = true;
                  });
                },
              ),
            if (isSelectionMode)
              TextButton(
                  child: !_selectAll
                      ? const Text(
                          'select all',
                          style: TextStyle(color: Colors.white),
                        )
                      : const Text(
                          'unselect all',
                          style: TextStyle(color: Colors.white),
                        ),
                  onPressed: () {
                    _selectAll = !_selectAll;
                    setState(() {
                      _selected =
                          List<bool>.generate(listLength, (_) => _selectAll);
                    });
                  }),
          ],
        ),
        body: _isGridMode
            ? GridBuilder(
                isSelectionMode: isSelectionMode,
                selectedList: _selected,
                onSelectionChange: (bool x) {
                  setState(() {
                    isSelectionMode = x;
                  });
                },
              )
            : ListBuilder(
                isSelectionMode: isSelectionMode,
                selectedList: _selected,
                onSelectionChange: (bool x) {
                  setState(() {
                    isSelectionMode = x;
                  });
                },
              ));
  }
}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
class GridBuilder extends StatefulWidget {
  const GridBuilder({
    super.key,
    required this.selectedList,
    required this.isSelectionMode,
    required this.onSelectionChange,
  });
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  final bool isSelectionMode;
  final Function(bool)? onSelectionChange;
  final List<bool> selectedList;
  @override
  GridBuilderState createState() => GridBuilderState();
}
=======
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34

  final bool isSelectionMode;
  final Function(bool)? onSelectionChange;
  final List<bool> selectedList;

  @override
  GridBuilderState createState() => GridBuilderState();
}

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
class GridBuilderState extends State<GridBuilder> {
  void _toggle(int index) {
    if (widget.isSelectionMode) {
      setState(() {
        widget.selectedList[index] = !widget.selectedList[index];
      });
    }
  }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: widget.selectedList.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (_, int index) {
          return InkWell(
            onTap: () => _toggle(index),
            onLongPress: () {
              if (!widget.isSelectionMode) {
                setState(() {
                  widget.selectedList[index] = true;
                });
                widget.onSelectionChange!(true);
              }
            },
            child: GridTile(
                child: Container(
              child: widget.isSelectionMode
                  ? Checkbox(
                      onChanged: (bool? x) => _toggle(index),
                      value: widget.selectedList[index])
                  : const Icon(Icons.image),
            )),
          );
        });
  }
}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
class ListBuilder extends StatefulWidget {
  const ListBuilder({
    super.key,
    required this.selectedList,
    required this.isSelectionMode,
    required this.onSelectionChange,
  });
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  final bool isSelectionMode;
  final List<bool> selectedList;
  final Function(bool)? onSelectionChange;
  @override
  State<ListBuilder> createState() => _ListBuilderState();
}
=======
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34

  final bool isSelectionMode;
  final List<bool> selectedList;
  final Function(bool)? onSelectionChange;

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
class _ListBuilderState extends State<ListBuilder> {
  void _toggle(int index) {
    if (widget.isSelectionMode) {
      setState(() {
        widget.selectedList[index] = !widget.selectedList[index];
      });
    }
  }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.selectedList.length,
        itemBuilder: (_, int index) {
          return ListTile(
              onTap: () => _toggle(index),
              onLongPress: () {
                if (!widget.isSelectionMode) {
                  setState(() {
                    widget.selectedList[index] = true;
                  });
                  widget.onSelectionChange!(true);
                }
              },
              trailing: widget.isSelectionMode
                  ? Checkbox(
                      value: widget.selectedList[index],
                      onChanged: (bool? x) => _toggle(index),
                    )
                  : const SizedBox.shrink(),
              title: Text('item $index'));
        });
  }
}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======

>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
 */