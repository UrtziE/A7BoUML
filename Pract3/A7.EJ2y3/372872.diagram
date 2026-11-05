format 224

classinstance 462216 class_ref 130563 // Entrega
  name ""   xyz 272 4 2000 life_line_z 2000
classinstance 462344 class_ref 129923 // EntregaDTO
  name "e"   xyz 521 4 2000 life_line_z 2000
classinstance 462472 class_ref 128643 // DAL
  name "dal"   xyz 697 4 2000 life_line_z 2000
classinstance 462600 class_ref 128515 // Coche
  name ""   xyz 916 338 2000 life_line_z 2000
classinstance 462728 class_ref 130691 // Reserva
  name ""   xyz 1112 694 2000 life_line_z 2000
classinstance 462856 class_ref 130435 // Empleado
  name ""   xyz 1337 1050 2000 life_line_z 2000
continuation 464008 "continúa en DAL.getCoche"
  xyzwh 728 268 2025 310 54
continuation 464392 "continúa en Coche.Coche"
  xyzwh 946 408 2025 299 54
continuation 465288 "continúa en DAL.getReserva"
  xyzwh 728 624 2025 329 54
continuation 465672 "continúa en Reserva.Reserva"
  xyzwh 1148 764 2025 337 54
continuation 466568 "continúa en DAL.getEmpleado"
  xyzwh 728 980 2025 346 54
note 466952 "Continuación de AlquilerVehiculos.getEntrega / AlquilerVehiculos.crearEntrega. id, fecha, tipoSeguro, kms y combustible se copian del DTO "
  xyzwh 20 1170 2000 760 124
durationcanvas 462984 classinstance_ref 462216 // :Entrega
  xyzwh 314 96 2010 11 1028
end
durationcanvas 463240 classinstance_ref 462472 // dal:DAL
  xyzwh 735 138 2010 11 32
end
durationcanvas 463496 classinstance_ref 462344 // e:EntregaDTO
  xyzwh 590 186 2010 11 32
end
durationcanvas 463752 classinstance_ref 462472 // dal:DAL
  xyzwh 735 234 2010 11 104
end
durationcanvas 464136 classinstance_ref 462600 // :Coche
  xyzwh 950 372 2010 11 106
end
durationcanvas 464520 classinstance_ref 462472 // dal:DAL
  xyzwh 735 494 2010 11 32
end
durationcanvas 464776 classinstance_ref 462344 // e:EntregaDTO
  xyzwh 590 542 2010 11 32
end
durationcanvas 465032 classinstance_ref 462472 // dal:DAL
  xyzwh 735 590 2010 11 104
end
durationcanvas 465416 classinstance_ref 462728 // :Reserva
  xyzwh 1155 728 2010 11 106
end
durationcanvas 465800 classinstance_ref 462472 // dal:DAL
  xyzwh 735 850 2010 11 32
end
durationcanvas 466056 classinstance_ref 462344 // e:EntregaDTO
  xyzwh 590 898 2010 11 32
end
durationcanvas 466312 classinstance_ref 462472 // dal:DAL
  xyzwh 735 946 2010 11 104
end
durationcanvas 466696 classinstance_ref 462856 // :Empleado
  xyzwh 1389 1084 2010 11 34
end
lostfoundmsgsupport 467080 xyz 10 91 2015
msg 463112 found_synchronous
  from lostfoundmsgsupport_ref 467080
  to durationcanvas_ref 462984
  yz 96 2030 explicitmsg "Entrega(e : EntregaDTO)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 24 72
msg 463368 synchronous
  from durationcanvas_ref 462984
  to durationcanvas_ref 463240
  yz 138 2030 msg operation_ref 131459 // "getSingleton() : DAL"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 337 114
msg 463624 synchronous
  from durationcanvas_ref 462984
  to durationcanvas_ref 463496
  yz 186 2030 msg operation_ref 135939 // "getTiene_asociado() : String"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 337 162
msg 463880 synchronous
  from durationcanvas_ref 462984
  to durationcanvas_ref 463752
  yz 234 2030 msg operation_ref 132739 // "getCoche(in matricula : String) : CocheDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "matricula"
  label_xy 337 210
msg 464264 synchronous
  from durationcanvas_ref 462984
  to durationcanvas_ref 464136
  yz 354 2030 explicitmsg "new Coche(cocheDTO)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 337 330
msg 464648 synchronous
  from durationcanvas_ref 462984
  to durationcanvas_ref 464520
  yz 494 2030 msg operation_ref 131459 // "getSingleton() : DAL"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 337 470
msg 464904 synchronous
  from durationcanvas_ref 462984
  to durationcanvas_ref 464776
  yz 542 2030 msg operation_ref 134659 // "getId() : int"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 337 518
msg 465160 synchronous
  from durationcanvas_ref 462984
  to durationcanvas_ref 465032
  yz 590 2030 msg operation_ref 132611 // "getReserva(in id : int) : ReservaDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "id"
  label_xy 337 566
msg 465544 synchronous
  from durationcanvas_ref 462984
  to durationcanvas_ref 465416
  yz 710 2030 explicitmsg "new Reserva(reservaDTO)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 337 686
msg 465928 synchronous
  from durationcanvas_ref 462984
  to durationcanvas_ref 465800
  yz 850 2030 msg operation_ref 131459 // "getSingleton() : DAL"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 337 826
msg 466184 synchronous
  from durationcanvas_ref 462984
  to durationcanvas_ref 466056
  yz 898 2030 msg operation_ref 136195 // "getEs_realizada_por() : String"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 337 874
msg 466440 synchronous
  from durationcanvas_ref 462984
  to durationcanvas_ref 466312
  yz 946 2030 msg operation_ref 132995 // "getEmpleado(in dni : String) : EmpleadoDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "dni"
  label_xy 337 922
msg 466824 synchronous
  from durationcanvas_ref 462984
  to durationcanvas_ref 466696
  yz 1066 2030 explicitmsg "new Empleado(empleadoDTO)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 337 1042
end
