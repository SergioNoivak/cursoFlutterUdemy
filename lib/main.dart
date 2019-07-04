import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




void main() {

  runApp(new MaterialApp(title: "Contador de pessoas",
      home:  Home()   
      )
      );

}



class Home extends StatefulWidget {
@override
_HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> {

int _numeroPessoas = 8;  
String _textoInformativo = "Pode entrar";

void mudarPessoas(int valor){
  setState(() {
   _numeroPessoas+= valor;
   if(_numeroPessoas<0)
      this._textoInformativo="Mundo Invertido??";
    else if(_numeroPessoas<10)
      this._textoInformativo="Pode entrar";
      else
        this._textoInformativo="Lotado";
  });
}




@override
Widget build(BuildContext context) {
return Stack(children: <Widget>[
              Image.asset("images/restaurant.jpg", fit:BoxFit.cover, height: 1000),
              new Column(mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[ new Text("Pessoas: $_numeroPessoas", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal)),
                     new Row(          
                       mainAxisAlignment:MainAxisAlignment.center,
                           children: <Widget>[ 

                             Padding(padding: EdgeInsets.all(10.0),
                                     child: new FlatButton(
                                       child: Text("+1", 
                                                   style: TextStyle(
                                                               fontSize: 40.0, color: Colors.white)
                                                 ),
                                       onPressed: () {

                                        // debugPrint("+1");
                                        this.mudarPessoas(1);

                                       }
                                             )
                             ),
                            Padding(padding: EdgeInsets.all(10.0),                
                               child: new FlatButton(child: Text("-1", style: TextStyle(fontSize: 40.0, color: Colors.white)),
                               onPressed: () {
                                        // debugPrint("-1");
                                        this.mudarPessoas(-1);

                               }
                           ),
                            )
                        ],
                     ),

                     new Text("$_textoInformativo", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 30.0), )],


                   )

      ],);
}
}