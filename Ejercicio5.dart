class CuentaBancaria{
  String titular;
  double _saldo=0;

  CuentaBancaria({required this.titular});

  void depositar(double cantidad) {
    if (cantidad > 0) {
      this._saldo += cantidad;
      print("Depósito realizado con éxito. Saldo actual: ${this._saldo}");
    }
    else {
      print("Error: La cantidad a depositar debe ser mayor a 0");
    }
  }

  void retirar(double cantidad) {
    if (cantidad > 0 && cantidad <= this._saldo) {
        this._saldo -= cantidad;
        print("Retiro realizado con éxito. Saldo actual: ${this._saldo}");
      }
      else if (cantidad > this._saldo) {
        print("Error: Saldo insuficiente");
      }
    else {
      print("Error: La cantidad a retirar debe ser mayor a 0");
    }
  }

  void consltarSaldo() {
    print("Titular: $titular, Saldo: ${this._saldo}");
  }
}

void main() {
  CuentaBancaria cuenta1 = CuentaBancaria(titular: "Juan Pérez");
  cuenta1.consltarSaldo();
  print("Depositando 500");
  cuenta1.depositar(500.0);
  print("retirando 200");
  cuenta1.retirar(200.0);
  cuenta1.consltarSaldo();

  print("\n");
  CuentaBancaria cuenta2 = CuentaBancaria(titular: "María López");
  print("Prueba de errores:");
  cuenta2.consltarSaldo();
  print("Depositando -500");
  cuenta2.depositar(-500.0);
  print("retirando 3000");
  cuenta2.retirar(3000.0);
  cuenta2.consltarSaldo();
}