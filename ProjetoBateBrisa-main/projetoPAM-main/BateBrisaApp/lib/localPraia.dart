class localPraia {
  final String ref_praia;
  final String bairro_praia;
  final String estado_praia;
  late List<localPraia> locais;

localPraia (
  this.ref_praia, 
  this.bairro_praia,
  this.estado_praia,);
} 

final List<localPraia> locais = [
  localPraia('Av. Miguel Estéfano Jardim Tejereba', 'Enseada', 'São Paulo'),
];
/*
List<Praia> praias = [Praia('Praia da Enseada', 'Guarujá'),
                    Praia('Praia do Éden', 'Guarujá'),
                    Praia('Praia Pernambuco', 'Guarujá'),
                    Praia('Praia Sorocotuba', 'Guarujá'),
                    Praia('Praia Perequê', 'Guarujá'),
                    Praia('Praia de São Pedro', 'Guarujá')];   

    List<localPraia> locais = [localPraia(0, 'Av. Dom Pedro I', 'Enseada', 0),
                              localPraia(0, 'x', 'Tortuga', 0),
                              localPraia(0, 'x', 'Jardim Pernambuco', 0),
                              localPraia(0, 'x', 'Tortuga', 0),
                              localPraia(0, 'x', 'Perequê', 0),
                              localPraia(0, 'x', 'Jardim Tom', 0)
    ];


String ref_praia = '';
String bairro_praia = '';
String cidade_praia = '';
*/