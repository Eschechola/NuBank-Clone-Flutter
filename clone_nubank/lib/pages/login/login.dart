import 'package:clone_nubank/colors/AppColors.dart';
import 'package:clone_nubank/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  void chamarHomePage(context){
    
    Navigator.pushReplacement(context, new MaterialPageRoute(
        builder: (BuildContext context) => new DashboarMainPage(),
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: new BoxDecoration(
          color: Color.fromRGBO(113, 44, 120, 1),
          image: new DecorationImage(
            image: AssetImage('assets/images/background-login.jpg'),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: <Widget>[
            //--------------------------------------------------
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.15,
                left: MediaQuery.of(context).size.width * 0.06,
              ),
              child:
                Align(
                    alignment: Alignment.topLeft,
                    child:
                      Image.asset(
                        'assets/images/logo-login.png',
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                ),
            ),

            //--------------------------------------------------
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.15,
              ),
              child:
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: Text(
                    "Ser Nubank é ter uma vida financeira descomplicada.",
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: MediaQuery.of(context).size.height * 0.07,
                      fontWeight: FontWeight.bold,
                      height: 1
                    ),
                  ),
                ),
            ),

            //--------------------------------------------------
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.transparent
                ),
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      splashColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(4.0),
                      ),
                      onPressed: () => {},
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.020,
                          bottom: MediaQuery.of(context).size.height * 0.020,
                          left: MediaQuery.of(context).size.width * 0.23,
                          right: MediaQuery.of(context).size.width * 0.23,
                        ), 
                        child: 
                          Text(
                            "QUERO SER NUBANK",
                            style: TextStyle(
                              color: AppColors.principalColor,
                              fontSize: MediaQuery.of(context).size.height * 0.021
                            ),
                          ),
                      ),
                    ),


                    //--------------------------------------------------
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.03,
                      ),
                      child:
                        RaisedButton(
                          color: Color.fromRGBO(255, 255, 255, 0),
                          elevation: 0,
                          splashColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(4.0),
                            side: BorderSide(
                              width: 1.5,
                              color: AppColors.secondaryColor
                            ),
                          ),
                          onPressed: () => {},
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.020,
                              bottom: MediaQuery.of(context).size.height * 0.020,
                              left: MediaQuery.of(context).size.width * 0.23,
                              right: MediaQuery.of(context).size.width * 0.23,
                            ), 
                            child: 
                              Text(
                                "JÁ TENHO CONVITE",
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontSize: MediaQuery.of(context).size.height * 0.021
                                ),
                              ),
                          ),
                        ),
                    ),

                    //-------------------------------------------------- 
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.03,
                      ),
                      child:
                        RaisedButton(
                          color: Color.fromRGBO(255, 255, 255, 0),
                          elevation: 0,
                          splashColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(4.0),
                            side: BorderSide(
                              width: 1.5,
                              color: AppColors.secondaryColor
                            ),
                          ),
                          onPressed: (){
                            //chama a home page do usuário
                            Navigator.push(context, new MaterialPageRoute(
                              builder: (BuildContext context) => new DashboarMainPage(),
                            ));
                          },

                          child: Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.020,
                              bottom: MediaQuery.of(context).size.height * 0.020,
                              left: MediaQuery.of(context).size.width * 0.35,
                              right: MediaQuery.of(context).size.width * 0.34,
                            ), 
                            child: 
                              Text(
                                "LOGIN",
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontSize: MediaQuery.of(context).size.height * 0.021
                                ),
                              ),
                          ),
                        ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0,
                      ),
                      child:
                        RaisedButton(
                          color: Color.fromRGBO(255, 255, 255, 0),
                          elevation: 0,
                          splashColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(4.0),
                          ),
                          onPressed: () => {},
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.020,
                              bottom: MediaQuery.of(context).size.height * 0.020,
                              left: MediaQuery.of(context).size.width * 0.1,
                              right: MediaQuery.of(context).size.width * 0.1,
                            ), 
                            child: 
                              Text(
                                "Cambiar a México »",
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontSize: MediaQuery.of(context).size.height * 0.022
                                ),
                              ),
                          ),
                        ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
