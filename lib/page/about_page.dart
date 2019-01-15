import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final Color backColor = Colors.green;
  final Color textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF1A9F4B),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                )
              ],
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      "Ваш рейтинг",
                      style: TextStyle(color: textColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star,
                        color: textColor,
                      ),
                      Icon(
                        Icons.star,
                        color: textColor,
                      ),
                      Icon(
                        Icons.star,
                        color: textColor,
                      ),
                      Icon(
                        Icons.star,
                        color: textColor,
                      ),
                      Icon(
                        Icons.star,
                        color: textColor,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      "Ваш уровень",
                      style: TextStyle(
                        color: textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Новичок",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                    child: Text(
                      "ОПИСАНИЕ ПРОГРАММЫ\n\n"
                          "Спасибо, что ты используешь приложение tellJulia: Because I Care!\n"
                          "Это приложение для неравнодушных людей, которые заботяться о\n"
                          "своих продуктах и потребителях.\n"
                          "Теперь для вас, наших самых вовлеченных сотрудников, есть\n"
                          "возможность отслеживать свой статус в зависимости от количества\n"
                          "отправленных сообщений:\n\n"
                          "0 - Новичок\n"
                          "1-9 - Стажёр\n"
                          "10-24 - Искатель\n"
                          "25-49 - Профессионал\n"
                          "50-99 - Знаток\n"
                          "100 и больше - Шерлок Холмс\n\n"
                          "Достижение каждого из уровней предполагает вручение\n"
                          "памятного приза\n"
                          "В зачет принимаются только принятые к рассмотрению претензии\n"
                          "на качество продукции и проблемы на полке(содержащие в себе\n"
                          "всю необходимую информацию для проведения расследования),\n"
                          "отправленные с момента старта программы tellJulia.\n"
                          "Обновление статуса происходит каждый месяц\n\n"
                          "Ты можешь сделать свой вклад в улучшение качества продуктов!\n"
                          "Потому что тебе не все равно!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
