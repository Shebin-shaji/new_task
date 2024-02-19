import 'package:flutter/material.dart';
import 'package:new_task_payment_app/view/home_page/home_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return  Scaffold(
      appBar: AppBar(title: Text('Login Page',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 38),),backgroundColor:Color.fromRGBO(187,155,221,6),),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          key: formKey ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: 
            [TextFormField(
             controller: nameController,
             decoration: InputDecoration(
              labelText: "User Name",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
             ),
             validator: (value) {
               if(value != null && value.isNotEmpty){
                    return null;
               }
               else{
                return "The field is empty";
               }
             },
            ),
            SizedBox(height: 25),
            TextFormField(
             controller: PasswordController,
             decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
             ),
                  validator: (value) {
               if(value != null && value.isNotEmpty){
                    return null;
               }
               else{
                return "The field is empty";
               }
             },
             
            ),
            SizedBox(height: 25),
            ElevatedButton(onPressed: () {
            if (formKey.currentState!.validate() == true){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
            }else{
              return null;
            }
            }, child: Text("Login"))]),
        ),
      ),
    );
  }
}