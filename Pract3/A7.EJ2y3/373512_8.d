format 224

classinstance 478472 class_ref 128643 // DAL
  name "dal"   xyz 278 4 2000 life_line_z 2000
classinstance 478600 class_ref 132355 // CocheDAOImp
  name "cocDAO"   xyz 499 4 2000 life_line_z 2000
classinstance 478728 class_ref 132099 // ConnectionManager
  name "connManager"   xyz 1028 4 2000 life_line_z 2000
classinstance 478856 class_ref 128387 // CocheDTO
  name ""   xyz 1392 354 2000 life_line_z 2000
classinstance 478984 class_ref 129667 // DAOExcepcion
  name ""   xyz 1534 486 2000 life_line_z 2000
fragment 480392 "loop"
  xyzwh 555 314 1990 953 116
end
textcanvas 480520 "[rs.next()]"
  xyzwh 643 318 2020 137 26
fragment 480904 "break"
  xyzwh 555 446 1990 1118 116
end
textcanvas 481032 "[SQLException]"
  xyzwh 643 450 2020 170 26
note 481416 "Continuación de AlquilerVehiculos.listarVehiculosCategoriaSucursal. La DAOExcepcion se propaga hasta la capa que llamó."
  xyzwh 20 630 2000 760 110
durationcanvas 479112 classinstance_ref 478472 // dal:DAL
  xyzwh 316 96 2010 11 488
end
durationcanvas 479368 classinstance_ref 478600 // cocDAO:CocheDAOImp
  xyzwh 612 138 2010 11 440
end
durationcanvas 479624 classinstance_ref 478728 // connManager:ConnectionManager
  xyzwh 1194 180 2010 11 32
end
durationcanvas 479880 classinstance_ref 478728 // connManager:ConnectionManager
  xyzwh 1194 228 2010 11 32
end
durationcanvas 480136 classinstance_ref 478728 // connManager:ConnectionManager
  xyzwh 1194 276 2010 11 32
end
durationcanvas 480648 classinstance_ref 478856 // :CocheDTO
  xyzwh 1447 388 2010 11 34
end
durationcanvas 481160 classinstance_ref 478984 // :DAOExcepcion
  xyzwh 1608 520 2010 11 34
end
lostfoundmsgsupport 481544 xyz 10 91 2015
msg 479240 found_synchronous
  from lostfoundmsgsupport_ref 481544
  to durationcanvas_ref 479112
  yz 96 2030 msg operation_ref 132355 // "obtenerCoches(in sucursal : int) : CocheDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "sucursal"
  label_xy 24 72
msg 479496 synchronous
  from durationcanvas_ref 479112
  to durationcanvas_ref 479368
  yz 138 2030 msg operation_ref 165123 // "listarCoches(in sucursal : int) : CocheDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "sucursal"
  label_xy 337 114
msg 479752 synchronous
  from durationcanvas_ref 479368
  to durationcanvas_ref 479624
  yz 180 2030 msg operation_ref 165635 // "connect() : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 619 156
msg 480008 synchronous
  from durationcanvas_ref 479368
  to durationcanvas_ref 479880
  yz 228 2030 msg operation_ref 166019 // "queryDB(in sql : String) : ResultSet"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "'select * from COCHE where SUCURSAL= ...'"
  label_xy 619 204
msg 480264 synchronous
  from durationcanvas_ref 479368
  to durationcanvas_ref 480136
  yz 276 2030 msg operation_ref 165763 // "close() : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 619 252
msg 480776 synchronous
  from durationcanvas_ref 479368
  to durationcanvas_ref 480648
  yz 370 2030 explicitmsg "new CocheDTO(...)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 619 346
msg 481288 synchronous
  from durationcanvas_ref 479368
  to durationcanvas_ref 481160
  yz 502 2030 explicitmsg "new DAOExcepcion(e)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 619 478
end
