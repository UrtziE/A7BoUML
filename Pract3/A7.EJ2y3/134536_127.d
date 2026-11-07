format 224

classcanvas 307336 class_ref 133763 // ControladorPrincipal
  classdiagramsettings member_max_width 0 end
  xyz 36 36.8 3005
end
classcanvas 307464 class_ref 133507 // ControladorCasoDeUso
  classdiagramsettings member_max_width 0 end
  xyz 594.1 135.3 2006
end
classcanvas 307592 class_ref 134147 // ControladorEntregarVehiculoReserva
  classdiagramsettings member_max_width 0 end
  xyz 933.8 68.2 2000
end
classcanvas 307720 class_ref 130691 // Reserva
  classdiagramsettings member_max_width 0 end
  xyz 410.5 924.3 2000
end
classcanvas 307848 class_ref 128515 // Coche
  classdiagramsettings member_max_width 0 end
  xyz 1235.1 952.9 2000
end
note 307976 "Controlador de la ventana Entregar vehículo reservado. Muestra las reservas sin entrega de una sucursal y los coches disponibles, valida los datos y pide a AlquilerVehiculos que cree la entrega."
  xyzwh 1392.4 67.6 2000 280 314
note 308104 "Controlador principal de la aplicación. Sus manejadores de evento abren cada caso de uso; el de entregar vehículo reservado es el que inicia este."
  xyzwh 60.1 334.2 2000 280 230
note 308232 "Es la clase base de todos los controladores. Su método initCasoDeUso carga la vista, crea el controlador y asocia su ventana."
  xyzwh 590.1 234.7 2000 280 258
relationcanvas 308360 relation_ref 135555 // <generalisation>
  from ref 307592 z 2001 to ref 307464
  no_role_a no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 308488 relation_ref 135043 // <unidirectional association>
  from ref 307464 z 2001 to ref 307336
  role_a_pos 413 174 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 308616 relation_ref 136707 // <unidirectional association>
  from ref 307592 z 2001 stereotype "<<TableView>>" xyz 1240 612 3000 to ref 307848
  role_a_pos 1293 881 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 308744 relation_ref 136835 // <unidirectional association>
  from ref 307592 z 2001 stereotype "<<TableColumn>>" xyz 1240 648 3000 to ref 307848
  role_a_pos 1129 881 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 308872 relation_ref 136963 // <unidirectional association>
  from ref 307592 z 2001 stereotype "<<TableColumn>>" xyz 1040 612 3000 to ref 307848
  role_a_pos 1216 841 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 309000 relation_ref 137091 // <unidirectional association>
  from ref 307592 z 2001 stereotype "<<TableColumn>>" xyz 1040 648 3000 to ref 307848
  role_a_pos 1273 780 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 309128 relation_ref 135683 // <unidirectional association>
  from ref 307592 z 2001 stereotype "<<TableView>>" xyz 821 599 3000 to ref 307720
  role_a_pos 599 861 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 309256 relation_ref 135811 // <unidirectional association>
  from ref 307592 z 2001 stereotype "<<TableColumn>>" xyz 821 635 3000 to ref 307720
  role_a_pos 599 897 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 309384 relation_ref 135939 // <unidirectional association>
  from ref 307592 z 2001 stereotype "<<TableColumn>>" xyz 621 599 3000 to ref 307720
  role_a_pos 543 861 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 309512 relation_ref 136067 // <unidirectional association>
  from ref 307592 z 2001 stereotype "<<TableColumn>>" xyz 621 635 3000 to ref 307720
  role_a_pos 562 824 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 309640 relation_ref 136195 // <unidirectional association>
  from ref 307592 z 2001 stereotype "<<TableColumn>>" xyz 865 546 3000 to ref 307720
  role_a_pos 680 766 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 309768 relation_ref 136323 // <unidirectional association>
  from ref 307592 z 2001 stereotype "<<TableColumn>>" xyz 665 546 3000 to ref 307720
  role_a_pos 680 802 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 309896 relation_ref 136451 // <unidirectional association>
  from ref 307592 z 2001 stereotype "<<TableColumn>>" xyz 776 688 3000 to ref 307720
  role_a_pos 552 766 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 310024 relation_ref 136579 // <unidirectional association>
  from ref 307592 z 2001 stereotype "<<TableColumn>>" xyz 576 688 3000 to ref 307720
  role_a_pos 637 728 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
line 310152 -_-_
  from ref 307592 z 2001 to ref 307976
line 310280 -_-_
  from ref 307336 z 2001 to ref 308104
line 310408 -_-_
  from ref 307464 z 2001 to ref 308232
end
