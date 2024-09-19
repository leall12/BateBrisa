class restaurantePraia {
  final String nome_rest;
  final String nome_rua_rest;
  final int num_rest;
  final String horario_rest;
  final String telefone_rest;
  late List<restaurantePraia> restaurantes;

restaurantePraia (
  this.nome_rest, 
  this.nome_rua_rest,
  this.num_rest,
  this.horario_rest,
  this.telefone_rest);
} 

final List<restaurantePraia> restaurantes = [
  restaurantePraia('Restaurante Dona Eva', 'Av. Miguel Estefno', 1295, '12:00 às 22:00, todos os dias', '(13) 3797-6001')
];