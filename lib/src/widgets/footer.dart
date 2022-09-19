import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.35,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "YOUTUBE ",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "INSTAGRAM ",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "TWITTER ",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "YOUTUBE ",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "INSTAGRAM ",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "TWITTER ",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          // "NORDIC SANSCRITORIUM"
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 150, vertical: 30),
            child: Text("NORDIC SANSCRITORIUM",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 500, ),
            child: Text(
              "A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de texto em publicações para testar e ajustar aspectos visuais antes de utilizar conteúdo real.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
