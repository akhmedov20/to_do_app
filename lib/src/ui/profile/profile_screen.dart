import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/src/ui/profile/settings/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black26,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              // title: Text('Martha Hays',
              //   style: GoogleFonts.roboto(
              //       textStyle: TextStyle(
              //         color: Colors.white,fontWeight: FontWeight.bold,
              //         fontSize: 20,
              //       )
              //   ),
              // ),
              background: Column(
                children: [
                  // Center(
                  //   child: Text('Profil',style: GoogleFonts.roboto(
                  //       textStyle: TextStyle(
                  //         color: Colors.white,fontWeight: FontWeight.bold,
                  //         fontSize: 20,
                  //       )
                  //   ),),
                  // ),
                  const SizedBox(height: 70,),
                  Center(
                    child: Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                      ),child: ClipRRect(borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/images/woman.png",fit: BoxFit.cover,)),
                    ),
                  ),
                  Center(child: Text('Martha Hays',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )
                    ),
                  ),),
                  const SizedBox(height: 24,),
                  Row(children: [
                    SizedBox(width: 30,),
                    Container(width: 154,
                      height: 68,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[700]
                      ),child: Center(child: Text(
                        '10 Vazifa qoldi',style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )
                      ),
                      ),),
                    ),
                    SizedBox(width: 20,),
                    Container(width: 154,
                      height: 68,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[700]
                      ),child: Center(child: Text(
                        '5 Vazifa bajarildi',style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )
                      ),
                      ),),
                    ),
                  ],),
                ],
              )
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
              (context, index){
                return Column(
                  children: [
                    SizedBox(height: 35,),

                    SizedBox(height: 32,),
                    Padding(
                      padding: const EdgeInsets.only(right: 270),
                      child: Text("Sozlamalar", style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )
                      ),),
                    ),
                    SizedBox(height: 8,),
                    ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return SettingsScreen();
                        }));
                      },
                      leading:  Icon(Icons.settings,color: Colors.white,size: 30,),
                      title: Text("Ilova sozlamalari",style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 18                ,
                          )
                      ),),
                      trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
                    ),
                    SizedBox(height: 28,),
                    Padding(
                      padding: const EdgeInsets.only(right: 285),
                      child: Text("Account", style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )
                      ),),
                    ),
                    SizedBox(height: 8,),
                    ListTile(
                      leading:  Icon(Icons.person,color: Colors.white,size: 30,),
                      title: Text("Account ismini o'zgartirish",style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 18                ,
                          )
                      ),),
                      trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
                    ),
                    ListTile(
                      leading:  Icon(Icons.key,color: Colors.white,size: 30,),
                      title: Text("Account parolini o'zgartirish",style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 18                ,
                          )
                      ),),
                      trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
                    ),
                    ListTile(
                      leading:  Icon(Icons.camera_alt,color: Colors.white,size: 30,),
                      title: Text("Account rasmini o'zgartirish",style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 18                ,
                          )
                      ),),
                      trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
                    ),
                    SizedBox(height: 28,),
                    Padding(
                      padding: const EdgeInsets.only(right: 300),
                      child: Text("UpToDo", style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )
                      ),),
                    ),
                    SizedBox(height: 8,),
                    ListTile(
                      leading:  Icon(Icons.menu_book_outlined,color: Colors.white,size: 30,),
                      title: Text("Biz haqimizda",style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 18                ,
                          )
                      ),),
                      trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
                    ),
                    ListTile(
                      leading:  Icon(Icons.info,color: Colors.white,size: 30,),
                      title: Text("FAQ",style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 18                ,
                          )
                      ),),
                      trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
                    ),
                    ListTile(
                      leading:  Icon(Icons.flash_on_outlined,color: Colors.white,size: 30,),
                      title: Text("Yordam & Mulohaza",style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 18                ,
                          )
                      ),),
                      trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
                    ),
                    ListTile(
                      leading: Icon(CupertinoIcons.smiley,color: Colors.white,),
                      title: Text("Bizni qo'llab quvvatlang",style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 18                ,
                          )
                      ),),
                      trailing: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
                    ),
                    ListTile(
                      leading:  Icon(Icons.logout,color: Colors.red,size: 30,),
                      title: Text("Chiqish",style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.red,fontWeight: FontWeight.bold,
                            fontSize: 18                ,
                          )
                      ),),
                    ),
                  ],
                );
              },
              childCount: 1,
          ))
        ],
      ),
    );
  }
}
