class mercadoPraia {
  final String nome_merc;
  final String nome_rua_merc;
  final int num_merc;
  final String horario_merc;
  late List<mercadoPraia> mercados;

mercadoPraia (
  this.nome_merc, 
  this.nome_rua_merc,
  this.num_merc,
  this.horario_merc,);
} 

final List<mercadoPraia> mercados = [
  mercadoPraia('Mercado Dia', 'Av. Dom Pedro I', 1774, 'Segunda	à sábado das 08:00-21:00, Domingo das 08:00-14:00')
];