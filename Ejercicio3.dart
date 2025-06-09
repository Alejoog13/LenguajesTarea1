class Empleado {
  final String nombre;
  final String puesto;
  final double salario;

  Empleado( this.nombre,this.salario, this.puesto);
}

void main(){
  final List<Empleado> empleados = [
    Empleado('Juan Perez', 30000, 'Recursos Humanos'),
    Empleado('Guillermo Lopez', 10000, 'Auxiliar de Bodega'),
    Empleado('Antonio Ramos', 14000, 'Despacho'),
    Empleado('Victor Hernandez', 14000, 'Despacho'),
    Empleado('Eduardo Pinead', 14000, 'Vigilante'),
    Empleado('Elias Mondragon', 17000, 'Jefe De Bodega')
  ];

  print(salarioTotal(empleados));
  print(salarioPromedio(empleados));
}

double salarioTotal(List<Empleado> planilla)
{ 
  double total=0;
  planilla.forEach((emp){
    total+=emp.salario;
  });
  return total;
}

double salarioPromedio(List<Empleado> planilla)
{ 
  double total=0;
  planilla.forEach((emp){
    total+=emp.salario;
  });
  return total/planilla.length;
}
