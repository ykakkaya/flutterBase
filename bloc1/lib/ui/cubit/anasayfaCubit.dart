import 'package:bloc1/data/repo/anasayfaHesapla.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> {
  AnasayfaCubit() : super(0);
  var hesapla = AnasayfaHesapla();

  void toplamBul(String num1, String num2) {
    int toplam = hesapla.topla(num1, num2);
    emit(toplam);
  }

  void carpimBul(String num1, String num2) {
    int carpim = hesapla.carp(num1, num2);
    emit(carpim);
  }
}
