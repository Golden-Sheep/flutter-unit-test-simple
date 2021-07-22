import 'package:calc/calculadora.dart';
import 'package:test/test.dart';

void main() {
  test('Teste de Multiplicação', () {
    var calc = Calculadora(numero1: 3, numero2: 3, operacao: 'x');
    expect(calc.calcular(), 9);
  });

  test('Teste de Soma', () {
    var calc = Calculadora(numero1: 3, numero2: 3, operacao: '+');
    expect(calc.calcular(), 6);
  });

  test('Teste de Subtração', () {
    var calc = Calculadora(numero1: 3, numero2: 3, operacao: '-');
    expect(calc.calcular(), 0);
  });

  test('Teste de Divisão', () {
    var calc = Calculadora(numero1: 3, numero2: 3, operacao: '/');
    expect(calc.calcular(), 1);
  });
}
