import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var items = ['flutter', 'php', 'mysql', 'python'];
  String val = 'flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightBlue,foregroundColor: Colors.white,centerTitle: true,title: const Text("Buttons"),),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          FloatingActionButton(
            tooltip: "Floating Action Button",
            backgroundColor: Colors.lightBlueAccent,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Floating Action Button Pressed')));
            },
            child: const Icon(Icons.abc),
          ),
          IconButton.filled(
            tooltip: "Icon Button",
            onPressed: () => {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Icon Button Pressed')))
            },
            icon: const Icon(Icons.ac_unit),
          ),
          InkWell(
            child: const Text("InkWell"),
            onDoubleTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('InkWell Double Tapped')));
            },
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('InkWell Tapped')));
            },
          ),
          OutlinedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Outlined Button Pressed')));
            },
            child: const Text("Outlined Button"),
          ),
          DropdownButton(
          
            value: val,
            items: items.map((String? items) => DropdownMenuItem(
                      value: items,
                      child: Text(items!),
                    ))
                .toList(),
            onChanged: (String? value) {
              setState(() {
                val = value!;
              });
            },
          ),
           PopupMenuButton<int>(
             
              itemBuilder: (context) => [

                const PopupMenuItem(  
                  value: 1,  
                  child: Row(  
                    children: [
                      Icon(Icons.done),
                      SizedBox(
                        width: 10, 
                      ),
                      Text("Submit")
                    ],
                  ),
                ),
      
                const PopupMenuItem( 
                  value: 2,
                
                  child: Row( 
                    children: [
                      Icon(Icons.close),
                      SizedBox(
                      
                        width: 10, 
                      ),
                      Text("Discard")
                    ],
                  ),
                ),
              ],
              
            ),
          
        ]),
      ),
    );
  }
}
