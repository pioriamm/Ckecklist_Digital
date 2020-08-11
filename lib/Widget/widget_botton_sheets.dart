import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class widget_botton_sheets extends StatefulWidget {
  @override
  _widget_botton_sheetsState createState() => _widget_botton_sheetsState();
}

class _widget_botton_sheetsState extends State<widget_botton_sheets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 5,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "O que posso ajudar?",
              style: TextStyle(
                  fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            onTap: () {
              launchURL(
                  "mailto:inspecao@otimizati.com.br?subject=Ajuda&body= ");
              Navigator.pop(context);
            },
            leading: Icon(Icons.email),
            title: Text("Email"),
          ),
          ListTile(
            onTap: () {
              launchURL("tel:03133394900");
              Navigator.pop(context);
            },
            leading: Icon(Icons.phone),
            title: Text("Telefone"),
          ),
          ListTile(
            onTap: () {
              launchURL(
                  "http://otimizati.mysuite.com.br/client/chatan.php?h=e2acd3fa00ef267197b04f8739d3adf0&sl=otz");
              Navigator.pop(context);
            },
            leading: Icon(LineAwesomeIcons.wechat),
            title: Text("Chat"),
          ),
          ListTile(
            onTap: () {
              launchURL(
                  "https://api.whatsapp.com/send?phone=5531974001067&text=Ol%C3%A1!%20");
              Navigator.pop(context);
            },
            leading: Icon(LineAwesomeIcons.whatsapp),
            title: Text("Whatsapp"),
          ),
          ListTile(
            onTap: () {
              launchURL("https://www.instagram.com/otimizati/?hl=pt-br");
              Navigator.pop(context);
            },
            leading: Icon(LineAwesomeIcons.instagram),
            title: Text("Instagram"),
          ),
          ListTile(
            onTap: () {
              launchURL("https://goo.gl/maps/kqaQWvuq5NRyEi8t8");
              Navigator.pop(context);
            },
            leading: Icon(LineAwesomeIcons.map),
            title: Text("Local"),
          ),
        ],
      ),
    );
  }

  launchURL(String endereco) async {
    if (await canLaunch(endereco)) {
      await launch(endereco);
    } else {
      throw 'Could not launch $endereco';
    }
  }
}
