class farmaciaPraia {
  final String nome_farm;
  final String nome_rua_farm;
  final int num_farm;
  final String horario_farm;
  final String telefone_farm;
  late List<farmaciaPraia> farmacias;

farmaciaPraia (
  this.nome_farm, 
  this.nome_rua_farm,
  this.num_farm,
  this.horario_farm,
  this.telefone_farm);
} 

final List<farmaciaPraia> farmacias = [
  farmaciaPraia('Drogaria São Paulo', 'Av. Dom Pedro I', 1574, '24 horas, todos os dias', '(13) 3392-2668')
];