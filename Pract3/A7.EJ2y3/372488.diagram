format 224

classinstance 449288 class_ref 131203 // AlquilerVehiculos
  name "alq"   xyz 904 4 2000 life_line_z 2000
classinstance 449416 class_ref 129923 // EntregaDTO
  name "entregaDTO"   xyz 2046 122 2000 life_line_z 2000
classinstance 449544 class_ref 128643 // DAL
  name "dal"   xyz 2321 4 2000 life_line_z 2000
classinstance 449672 class_ref 130563 // Entrega
  name "entrega"   xyz 2556 430 2000 life_line_z 2000
classinstance 449800 class_ref 128515 // Coche
  name ""   xyz 2820 1054 2000 life_line_z 2000
continuation 450696 "continúa en DAL.crearEntrega"
  xyzwh 2352 240 2025 345 54
continuation 451080 "continúa en DAL.modificarCoche"
  xyzwh 2352 360 2025 368 54
continuation 451464 "continúa en Entrega.Entrega"
  xyzwh 2631 500 2025 331 54
continuation 451848 "continúa en AlquilerVehiculos.getReserva"
  xyzwh 1012 634 2025 470 54
continuation 452488 "continúa en AlquilerVehiculos.getEmpleado"
  xyzwh 1012 816 2025 481 54
continuation 453128 "continúa en DAL.getCoche"
  xyzwh 2352 984 2025 310 54
continuation 453512 "continúa en Coche.Coche"
  xyzwh 2850 1124 2025 299 54
note 454408 "Continuación de ControladorEntregarVehiculoReserva.aceptar. Guarda la entrega en la base de datos, actualiza los kilómetros del coche y lo quita de la sucursal y guarda la entrega."
  xyzwh 20 1404 2000 760 150
durationcanvas 449928 classinstance_ref 449288 // alq:AlquilerVehiculos
  xyzwh 1004 96 2010 11 1262
  overlappingdurationcanvas 451592
    xyzwh 1010 598 2011 11 106
  end
  overlappingdurationcanvas 452232
    xyzwh 1010 780 2011 11 106
  end
  overlappingdurationcanvas 453896
    xyzwh 1010 1270 2011 11 82
  end
end
durationcanvas 450184 classinstance_ref 449416 // entregaDTO:EntregaDTO
  xyzwh 2167 156 2010 11 34
end
durationcanvas 450440 classinstance_ref 449544 // dal:DAL
  xyzwh 2359 206 2010 11 104
end
durationcanvas 450824 classinstance_ref 449544 // dal:DAL
  xyzwh 2359 326 2010 11 104
end
durationcanvas 451208 classinstance_ref 449672 // entrega:Entrega
  xyzwh 2635 464 2010 11 106
end
durationcanvas 451976 classinstance_ref 449672 // entrega:Entrega
  xyzwh 2635 720 2010 11 32
end
durationcanvas 452616 classinstance_ref 449672 // entrega:Entrega
  xyzwh 2635 902 2010 11 32
end
durationcanvas 452872 classinstance_ref 449544 // dal:DAL
  xyzwh 2359 950 2010 11 104
end
durationcanvas 453256 classinstance_ref 449800 // :Coche
  xyzwh 2854 1088 2010 11 106
end
durationcanvas 453640 classinstance_ref 449672 // entrega:Entrega
  xyzwh 2635 1210 2010 11 32
end
durationcanvas 454152 classinstance_ref 449672 // entrega:Entrega
  xyzwh 2635 1314 2010 11 32
end
lostfoundmsgsupport 454536 xyz 10 91 2015
msg 450056 found_synchronous
  from lostfoundmsgsupport_ref 454536
  to durationcanvas_ref 449928
  yz 96 2030 msg operation_ref 141571 // "crearEntrega(in id : int, inout fecha : LocalDateTime, in tipoSeguro : String, in kms : double, in combustible : double, in tiene_asociado : String, in es_realizada_por : String) : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "id, fecha, tipoSeguro, kms, combustible, tiene_asociado, es_realizada_por"
  label_xy 24 72
msg 450312 synchronous
  from durationcanvas_ref 449928
  to durationcanvas_ref 450184
  yz 138 2030 explicitmsg "new EntregaDTO(id, fecha, tipoSeguro, kms, combustible, tiene_asociado, es_realizada_por)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 1041 114
msg 450568 synchronous
  from durationcanvas_ref 449928
  to durationcanvas_ref 450440
  yz 206 2030 msg operation_ref 131843 // "crearEntrega(inout entrega : EntregaDTO) : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "entregaDTO"
  label_xy 1041 182
msg 450952 synchronous
  from durationcanvas_ref 449928
  to durationcanvas_ref 450824
  yz 326 2030 msg operation_ref 133251 // "modificarCoche(in matricula : String, in kms : double) : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "tiene_asociado, kms"
  label_xy 1041 302
msg 451336 synchronous
  from durationcanvas_ref 449928
  to durationcanvas_ref 451208
  yz 446 2030 explicitmsg "new Entrega(entregaDTO)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 1041 422
reflexivemsg 451720 synchronous
  to durationcanvas_ref 451592
  yz 598 2030 msg operation_ref 142723 // "getReserva(in idReserva : int) : Reserva"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "id"
  label_xy 1049 574
msg 452104 synchronous
  from durationcanvas_ref 449928
  to durationcanvas_ref 451976
  yz 720 2030 msg operation_ref 157315 // "setAsociado_a_reserva(inout asociado_a_reserva : Reserva) : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "reserva"
  label_xy 1041 696
reflexivemsg 452360 synchronous
  to durationcanvas_ref 452232
  yz 780 2030 msg operation_ref 142339 // "getEmpleado(in dni : String) : Empleado"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "es_realizada_por"
  label_xy 1049 756
msg 452744 synchronous
  from durationcanvas_ref 449928
  to durationcanvas_ref 452616
  yz 902 2030 msg operation_ref 157571 // "setEs_realizada_por(inout es_realizada_por : Empleado) : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "empleado"
  label_xy 1041 878
msg 453000 synchronous
  from durationcanvas_ref 449928
  to durationcanvas_ref 452872
  yz 950 2030 msg operation_ref 132739 // "getCoche(in matricula : String) : CocheDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "tiene_asociado"
  label_xy 1041 926
msg 453384 synchronous
  from durationcanvas_ref 449928
  to durationcanvas_ref 453256
  yz 1070 2030 explicitmsg "new Coche(cocheDTO)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 1041 1046
msg 453768 synchronous
  from durationcanvas_ref 449928
  to durationcanvas_ref 453640
  yz 1210 2030 msg operation_ref 156803 // "setTiene_asociado(inout tiene_asociado : Coche) : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "coche"
  label_xy 1041 1186
reflexivemsg 454024 synchronous
  to durationcanvas_ref 453896
  yz 1270 2030 msg operation_ref 141699 // "addEntrega(inout e : Entrega) : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "entrega"
  label_xy 1049 1246
msg 454280 synchronous
  from durationcanvas_ref 453896
  to durationcanvas_ref 454152
  yz 1314 2030 msg operation_ref 155395 // "getId() : int"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 1041 1290
end
