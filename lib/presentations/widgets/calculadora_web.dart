import 'package:eval_ex/expression.dart';
import 'package:flutter/material.dart';

class CalculadoraWeb extends StatefulWidget {
  CalculadoraWeb({super.key});

  @override
  State<CalculadoraWeb> createState() => _CalculadoraWebState();
}

class _CalculadoraWebState extends State<CalculadoraWeb> {
  String content = "";
  List<String> history = [];

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    if (size > 446) {
      size = 446;
    }
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: size,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _pantalla(
                content: content,
                height: height / 3,
                history: history,
                width: size,
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "1";
                        setState(() {});
                      },
                      text: "1",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "2";
                        setState(() {});
                      },
                      text: "2",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "3";
                        setState(() {});
                      },
                      text: "3",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "+";
                        setState(() {});
                      },
                      text: "+",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "4";
                        setState(() {});
                      },
                      text: "4",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "5";
                        setState(() {});
                      },
                      text: "5",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "6";
                        setState(() {});
                      },
                      text: "6",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "-";
                        setState(() {});
                      },
                      text: "-",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "7";
                        setState(() {});
                      },
                      text: "7",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "8";
                        setState(() {});
                      },
                      text: "8",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "9";
                        setState(() {});
                      },
                      text: "9",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "*";
                        setState(() {});
                      },
                      text: "*",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "/";
                        setState(() {});
                      },
                      text: "/",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += "0";
                        setState(() {});
                      },
                      text: "0",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        if(content.contains("Syntax Error") || content.contains("NaN")){
                          content = "";
                        }
                        content = content += ".";
                        setState(() {});
                      },
                      text: ".",
                      width: size / 4.5),
                  _botonCalculadoraWeb(
                      onPressed: () {
                        try {
                          String aux = content;
                          content = Expression(content).eval().toString();
                          history.add("$aux = $content");
                        } catch (e) {
                          if (e.toString().contains("divide by 0")) {
                            content = "NaN";
                          } else {
                            content = "Syntax Error";
                          }
                        }
                        setState(() {});
                      },
                      text: "=",
                      width: size / 4.5),
                  SizedBox(
                      height: size / 4.5,
                      width: size / 1.5,
                      child: ElevatedButton(
                        onPressed: () {
                          content = "";
                          setState(() {});
                        },
                        child: const Text(
                          "RESET",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                      )),
                  SizedBox(
                      height: size / 4.5,
                      width: size / 4.5,
                      child: ElevatedButton(
                        onPressed: () {
                          if (content.isNotEmpty) {
                            content = content.substring(0, content.length - 1);
                          }
                          setState(() {});
                        },
                        child: const Icon(Icons.backspace),
                      ))
                ],
              )
            ],
          ),
        ),
        MediaQuery.of(context).size.width > 1100
            ? Padding(
              padding: const EdgeInsets.symmetric( vertical:100),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: SizedBox(
                    width: 446,
                    child: ListView.builder(
                      itemCount: history.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(history[index],
                              style: const TextStyle(fontSize: 30),
                              textAlign: TextAlign.start),
                        );
                      },
                    ),
                  ),
              ),
            )
            : Container()
      ],
    );
  }
}

class _pantalla extends StatelessWidget {
  double width;
  double height;
  String content;
  List<String> history;
  _pantalla(
      {required this.content,
      required this.height,
      required this.history,
      required this.width});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height*0.7,
        width: width,
        child: Stack(
          children: [
            Align(
              alignment: MediaQuery.of(context).size.width < 1100
                  ? Alignment.bottomRight
                  : Alignment.topLeft,
              child: Text(
                content,
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: MediaQuery.of(context).size.width < 1100
                  ? SizedBox(
                      height: height * 0.3,
                      child: ListView.builder(
                        reverse: true,
                        itemCount: history.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(
                            history[history.length - 1 - index],
                            style: const TextStyle(fontSize: 30),
                          );
                        },
                      ),
                    )
                  : null,
            )
          ],
        ));
  }
}

class _botonCalculadoraWeb extends StatelessWidget {
  VoidCallback onPressed;
  String text;
  double width;
  _botonCalculadoraWeb(
      {required this.onPressed, required this.text, required this.width});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: width,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Center(
              child: Text(
            text,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ))),
    );
  }
}
