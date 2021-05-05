import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {

  final _formKey = GlobalKey<FormState>();
  String error = '';
  String _title;
  String _desc;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(

      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          color: Colors.indigo,
          padding: EdgeInsets.all(5),
          child: FloatingActionButton(
            child: IconButton(
              icon: Icon(Icons.add, size: 35,),
            ),
            onPressed: () {},
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: queryData.size.height/5.5,),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Add Note", textAlign: TextAlign.left, style: TextStyle(fontSize: 35),),
                    SizedBox(height: queryData.size.height/13,),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (val) {
                                if(val.isEmpty)
                                  return 'Empty';
                                else if(val.length < 5) {
                                  return 'Please Add A Minimum Of 5 Characters';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: "Title",
                                hintStyle: TextStyle(color: Colors.grey),
                                //border: InputBorder.none
                              ),
                              onSaved:(val) => _title = val,
                              //controller: nameController,
                            ),
                            SizedBox(height: queryData.size.height/20,),
                            TextFormField(
                              validator: (val) {
                                if(val.isEmpty)
                                  return 'Empty';
                                else if(val.length < 10) {
                                  return 'Please Add A Minimum Of 10 Characters';
                                }
                                return null;
                              },
                              initialValue: _desc != null ? _desc : null,
                              decoration: InputDecoration(
                                hintText: "Description",
                                hintStyle: TextStyle(color: Colors.grey),
                                //border: InputBorder.none
                              ),
                              onSaved:(val) => _desc = val,
                              //controller: descController,
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: queryData.size.height/20,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: RaisedButton(
                  onPressed: () {
//                    if(_validateAndSaveForm()) {
//                      _createTodo(context);
//                    }
                  },
                  color: Colors.indigo,elevation: 15,
                  child: Center(
                      child: Text("Submit", style: TextStyle(color: Colors.white,fontSize: 18),)
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(error, style: TextStyle(color: Colors.red),),
            ],
          ),
        ),

      ),
    );
  }
}
