import 'package:flutter/material.dart';

class PageLogin extends StatelessWidget {
  const PageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors:[
          Colors.lightBlue.shade300,
          Colors.blue.shade900
        ])
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  // decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(37)),
                  child: const Text('Sign In', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                ),
              
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(margin: const EdgeInsets.symmetric(horizontal: 2,vertical: 5),
                      child: const Text('Email', style: TextStyle(fontWeight: FontWeight.bold, ),)),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(11),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(color: Colors.blue.shade500, borderRadius: BorderRadius.circular(10),),
                        
                        child: const TextField(cursorColor: Colors.white,decoration: InputDecoration(icon: Icon(Icons.email, color: Colors.white),hintText: 'Enter your Email',border: InputBorder.none)),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 20,),
                
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                    child: const Text('Password', style: TextStyle(fontWeight: FontWeight.bold),),),
                    Material(
                       elevation: 5,
                      borderRadius: BorderRadius.circular(11),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(color: Colors.blue.shade500, borderRadius: BorderRadius.circular(10),),
                      child: const TextField(cursorColor: Colors.white, decoration: InputDecoration(icon: Icon(Icons.lock, color: Colors.white),hintText: 'Enter your Password', border: InputBorder.none),),
                      ),
                    ),
                  ],
                ),

                Container(width: 300,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(margin: const EdgeInsets.symmetric(horizontal: 2,vertical: 15),
                                padding: EdgeInsets.symmetric(horizontal: 3),
                        child: Text('Forgot Password?', style: TextStyle(fontWeight: FontWeight.bold),),),
                    ],
                  ),
                ),


                // const SizedBox(height: 5,),


                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 300,
                    padding: const EdgeInsets.only(left: 15, bottom: 10),
                      child: const Row(
                        children: [
                          Icon(Icons.check_box_outline_blank, size: 20,),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text('Remember me'),
                          ),
                        ],
                      ),),
                    Container(
                      child: ElevatedButton(onPressed: (){},style:  ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),minimumSize: const Size(300, 50),
                      ), child: const Text('Login'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Container(child:const Column(children: [Text('- Or -', style: TextStyle(fontSize: 15),),SizedBox(height: 10,), Text('Sign in with', style: TextStyle(fontWeight: FontWeight.bold),)])
                ),const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [BoxShadow(blurRadius: 4)]),
                    margin: EdgeInsets.only(left: 60),
                      child: const CircleAvatar(radius: 25.0,backgroundImage: AssetImage('assets/Google.png')),
                    ),
                    Container(decoration: BoxDecoration(shape: BoxShape.circle,  boxShadow: [BoxShadow(blurRadius: 4)]),
                    margin: EdgeInsets.only(right: 60),
                    child: const CircleAvatar(radius: 25.0,backgroundImage: AssetImage('assets/GitHub.png')),
                    )
                  ],
                ),

                SizedBox(height: 20,),


                Container(child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?'),SizedBox(width: 3,),
                    Text('Sign Up', style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}