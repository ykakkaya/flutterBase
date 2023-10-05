import 'package:bloc1/ui/cubit/anasayfaCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tffNumber1 = TextEditingController();
  var tffNumber2 = TextEditingController();
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hesapla",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnasayfaCubit, int>(builder: (context, sonuc) {
                return Text(
                  sonuc.toString(),
                  style: TextStyle(fontSize: 25),
                );
              }),
              TextField(
                controller: tffNumber1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "BİRİNCİ SAYI",
                ),
              ),
              TextField(
                controller: tffNumber2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "İKİNCİ SAYI",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<AnasayfaCubit>()
                            .toplamBul(tffNumber1.text, tffNumber2.text);
                      },
                      child: Text("TOPLA")),
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<AnasayfaCubit>()
                            .carpimBul(tffNumber1.text, tffNumber2.text);
                      },
                      child: Text("ÇARP")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
