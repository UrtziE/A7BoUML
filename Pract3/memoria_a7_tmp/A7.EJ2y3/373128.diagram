format 224

classinstance 468872 class_ref 128643 // DAL
  name "dal"   xyz 278 4 2000 life_line_z 2000
classinstance 469000 class_ref 132995 // ReservaDAOImp
  name "resDAO"   xyz 642 4 2000 life_line_z 2000
classinstance 469128 class_ref 132099 // ConnectionManager
  name "connManager"   xyz 1392 4 2000 life_line_z 2000
classinstance 469256 class_ref 129795 // ReservaDTO
  name ""   xyz 1754 354 2000 life_line_z 2000
classinstance 469384 class_ref 129667 // DAOExcepcion
  name ""   xyz 1920 486 2000 life_line_z 2000
fragment 470792 "loop"
  xyzwh 709 314 1990 1173 116
end
textcanvas 470920 "[rs.next()]"
  xyzwh 797 318 2020 137 26
fragment 471304 "break"
  xyzwh 709 446 1990 1349 116
end
textcanvas 471432 "[SQLException]"
  xyzwh 797 450 2020 170 26
note 471816 "Continuación de AlquilerVehiculos.listarReservasSucursal. La DAOExcepcion se propaga hasta la capa que llamó"
  xyzwh 20 630 2000 760 110
durationcanvas 469512 classinstance_ref 468872 // dal:DAL
  xyzwh 316 96 2010 11 488
end
durationcanvas 469768 classinstance_ref 469000 // resDAO:ReservaDAOImp
  xyzwh 763 138 2010 11 440
end
durationcanvas 470024 classinstance_ref 469128 // connManager:ConnectionManager
  xyzwh 1558 180 2010 11 32
end
durationcanvas 470280 classinstance_ref 469128 // connManager:ConnectionManager
  xyzwh 1558 228 2010 11 32
end
durationcanvas 470536 classinstance_ref 469128 // connManager:ConnectionManager
  xyzwh 1558 276 2010 11 32
end
durationcanvas 471048 classinstance_ref 469256 // :ReservaDTO
  xyzwh 1818 388 2010 11 34
end
durationcanvas 471560 classinstance_ref 469384 // :DAOExcepcion
  xyzwh 1994 520 2010 11 34
end
lostfoundmsgsupport 471944 xyz 10 91 2015
msg 469640 found_synchronous
  from lostfoundmsgsupport_ref 471944
  to durationcanvas_ref 469512
  yz 96 2030 msg operation_ref 132099 // "getReservasSucursal(in id : int) : ReservaDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "id"
  label_xy 24 72
msg 469896 synchronous
  from durationcanvas_ref 469512
  to durationcanvas_ref 469768
  yz 138 2030 msg operation_ref 168579 // "obtenerReservasPorSucursalOrigen(in idSucursal : int) : ReservaDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "id"
  label_xy 337 114
msg 470152 synchronous
  from durationcanvas_ref 469768
  to durationcanvas_ref 470024
  yz 180 2030 msg operation_ref 165635 // "connect() : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 773 156
msg 470408 synchronous
  from durationcanvas_ref 469768
  to durationcanvas_ref 470280
  yz 228 2030 msg operation_ref 166019 // "queryDB(in sql : String) : ResultSet"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "'select * from RESERVA where SucursalRecogida=' + idSucursal"
  label_xy 773 204
msg 470664 synchronous
  from durationcanvas_ref 469768
  to durationcanvas_ref 470536
  yz 276 2030 msg operation_ref 165763 // "close() : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 773 252
msg 471176 synchronous
  from durationcanvas_ref 469768
  to durationcanvas_ref 471048
  yz 370 2030 explicitmsg "new ReservaDTO(...)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 773 346
msg 471688 synchronous
  from durationcanvas_ref 469768
  to durationcanvas_ref 471560
  yz 502 2030 explicitmsg "new DAOExcepcion(e)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 773 478
end
