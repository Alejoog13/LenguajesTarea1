void main(){
  final List<int> lista1 = [0, 1, 2, 3 ,4 ,1 ,4,4,4,43,2,5,343,212,6,23,6,4534,343,34,346]; 
  final List<int> listaFinal = []; 

  lista1.forEach((elemento){
    int cont = 0;
     lista1.forEach((elemento1){
        if(elemento1 == elemento){
          cont++;
        }
    });
    if(cont==1) {
      listaFinal.add(elemento);
    }
  });
  print(listaFinal);

}