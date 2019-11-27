import 'package:clone_nubank/colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(DashboarMainPage());

class DashboarMainPage extends StatefulWidget{
  @override
  Dashboard createState() => Dashboard();
}

class Dashboard extends State<StatefulWidget> {
  //variaveis para manipulação da imagem de mostrar / esconder valor
  static String caminhoImagemShowPassword = 'assets/images/dashboard_view_password.png';
  static String caminhoImagemHidePassword = 'assets/images/dashboard_hide_password.png';
  String caminhoImagemPadrao = caminhoImagemShowPassword;
  String saldoDisponivel = "R\$ 100,00";


  //variável para girar a seta de conteúdo abaixo do nome
  var setaMostrarMaisInformacoes = new AlwaysStoppedAnimation(90 / 360);

  //função que vai alterar o icone de ver/esconder valor
  alterarImagemPassword(){
    setState(() {
      //se tiver o valor estiver oculto, ele troca o icone e deixa o valor vísivel
      //senao ele oculta o valor e troca o ícone 
      if(caminhoImagemPadrao == caminhoImagemHidePassword)
      {
        caminhoImagemPadrao = caminhoImagemShowPassword;
        saldoDisponivel = "R\$ 100,00";
      }
      else
      {
        caminhoImagemPadrao = caminhoImagemHidePassword;
        saldoDisponivel = "";
      }                                                  
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.principalColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Center(
            child:
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05
                ),
                child:
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/logo-screen.png',
                        width: MediaQuery.of(context).size.width * 0.17,
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.03,
                        ),
                        child:
                          Text(
                            "Lucas",
                            style: TextStyle(
                              color: AppColors.secondaryColor,
                              fontSize: 30,
                              textBaseline: TextBaseline.alphabetic,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Ubuntu',
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.04,
                decoration: BoxDecoration(
                  color: Colors.transparent
                ),
                child:
                  RotationTransition(
                    turns: setaMostrarMaisInformacoes,
                    child:
                      Text(
                      "〉",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[300],
                        decoration: TextDecoration.none,
                        fontFamily: 'Ubuntu',
                        fontSize: 20 
                      ),
                    ),
                  )
              ),
            ),


            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.07,
                    ),
                  child:
                    Container(
                      width: MediaQuery.of(context).size.width * 0.92,
                      height: MediaQuery.of(context).size.height * 0.58,
                      decoration: BoxDecoration(
                          color: AppColors.principalColor
                        ),
                      child:
                        Center(
                          child:
                            Carousel(
                              images: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.9,
                                  height: MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                    color: AppColors.principalColor,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.92,
                                        height: MediaQuery.of(context).size.height * 0.55,
                                        decoration: BoxDecoration(
                                          color: AppColors.secondaryColor,
                                          borderRadius: new BorderRadius.all(Radius.circular(5))
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                              Container(
                                                width: MediaQuery.of(context).size.width * 0.92,
                                                height: MediaQuery.of(context).size.height * 0.15,
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent
                                                ),
                                                child: Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: MediaQuery.of(context).size.width * 0.05,
                                                      ),
                                                      child:
                                                        Image.asset(
                                                          'assets/images/dashboard_moedas.png',
                                                          color: AppColors.iconColor,
                                                          height: MediaQuery.of(context).size.height * 0.045
                                                        ),
                                                    ),
                                                    
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: MediaQuery.of(context).size.width * 0.04,
                                                      ),
                                                      child: Text(
                                                        "Nu Conta",
                                                        style: TextStyle(
                                                          color: AppColors.iconColor,
                                                          decoration: TextDecoration.none,
                                                          fontWeight: FontWeight.normal,
                                                          fontFamily: 'Ubuntu',
                                                          fontSize: MediaQuery.of(context).size.width * 0.05,
                                                        ),
                                                      ),
                                                    ),

                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: MediaQuery.of(context).size.width * 0.25,
                                                        top: MediaQuery.of(context).size.height * 0.001,
                                                      ),
                                                      child: FlatButton(
                                                        onPressed: (){
                                                          alterarImagemPassword();
                                                        },
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: new BorderRadius.circular(80.0),
                                                        ),
                                                        child: Image.asset(
                                                          caminhoImagemPadrao,
                                                          color: AppColors.iconColor,
                                                          height: MediaQuery.of(context).size.height * 0.05,
                                                        ),
                                                      )
                                                    ),
                                                  ],
                                                )
                                              ),

                                              Container(
                                                width: MediaQuery.of(context).size.width * 0.92,
                                                height: MediaQuery.of(context).size.height * 0.25,
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      width: MediaQuery.of(context).size.width * 0.92,
                                                      child:
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                            left: MediaQuery.of(context).size.width * 0.06,
                                                          ),
                                                          child:
                                                           Text(
                                                            "Saldo disponível",
                                                            textAlign: TextAlign.start,
                                                            style: TextStyle(
                                                                color: AppColors.iconColor,
                                                                decoration: TextDecoration.none,
                                                                fontWeight: FontWeight.normal,
                                                                fontFamily: 'Ubuntu',
                                                                fontSize: MediaQuery.of(context).size.width * 0.05,
                                                              ),
                                                          ),
                                                        )
                                                    ),

                                                     Container(
                                                      width: MediaQuery.of(context).size.width * 0.92,
                                                      child:
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                            left: MediaQuery.of(context).size.width * 0.06,
                                                          ),
                                                          child: Text(
                                                            saldoDisponivel,
                                                            textAlign: TextAlign.start,
                                                            style: TextStyle(
                                                              color: AppColors.iconDarkColor,
                                                              decoration: TextDecoration.none,
                                                              fontWeight: FontWeight.normal,
                                                              fontFamily: 'Ubuntu',
                                                              fontSize: MediaQuery.of(context).size.width * 0.1,
                                                            ),
                                                          ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Container(
                                                width: MediaQuery.of(context).size.width * 0.92,
                                                height: MediaQuery.of(context).size.height * 0.13,
                                                decoration: BoxDecoration(
                                                  color: AppColors.slideBackgroundColor
                                                ),
                                                child: Row(
                                                  children: <Widget>[
                                                    Container(
                                                      width: MediaQuery.of(context).size.width * 0.25,
                                                      height: MediaQuery.of(context).size.height * 0.13,
                                                      decoration: BoxDecoration(
                                                        color: Colors.transparent,
                                                      ),
                                                      child:
                                                      Column(
                                                        children: <Widget>[
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                              top: MediaQuery.of(context).size.height * 0.035,
                                                            ),
                                                            child:
                                                              Container(
                                                                width: MediaQuery.of(context).size.height * 0.04,
                                                                child: Image.asset(
                                                                    'assets/images/dashboard_credit_card.png',
                                                                    color: AppColors.iconDarkColor,
                                                                ),
                                                              ),
                                                          ),
                                                        ]
                                                      ),
                                                    ),

                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                            top: MediaQuery.of(context).size.height * 0.035,
                                                          ),
                                                          child:
                                                            Text(
                                                              "Cartão em trânsito",
                                                              textAlign: TextAlign.start,
                                                                style: TextStyle(
                                                                  color: AppColors.principalColor,
                                                                  decoration: TextDecoration.none,
                                                                  fontWeight: FontWeight.bold,
                                                                  fontFamily: 'Ubuntu',
                                                                  fontSize: MediaQuery.of(context).size.width * 0.038,
                                                                ),
                                                            ),
                                                        ),

                                                        Text(
                                                          "Estimativa de entrega: 25 OUT",
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(
                                                            color: AppColors.iconColor,
                                                            decoration: TextDecoration.none,
                                                            fontWeight: FontWeight.normal,
                                                            fontFamily: 'Ubuntu',
                                                            fontSize: MediaQuery.of(context).size.width * 0.038,
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),      
                                            ],
                                          ),
                                      ),
                                    ],
                                  )
                                ),
                                
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.9,
                                  height: MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                    color: AppColors.principalColor
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.92,
                                        height: MediaQuery.of(context).size.height * 0.55,
                                        decoration: BoxDecoration(
                                          color: AppColors.secondaryColor,
                                        ),
                                      )
                                    ],
                                  )
                                ),
                              ],
                              showIndicator: true,
                              animationDuration: Duration(microseconds: 400),
                              autoplay: false,
                              dotSize: 3.0,
                              dotSpacing: 15.0,
                              dotColor: Color.fromRGBO(255, 255, 255, 0.8),
                              indicatorBgPadding: 20.0,
                              dotBgColor: AppColors.principalColor,
                              borderRadius: false,
                              noRadiusForIndicator: false,
                            ),
                      )
                    ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}