format 224

classinstance 472072 class_ref 128643 // DAL
  name "dal"   xyz 190 4 2000 life_line_z 2000
classinstance 472200 class_ref 132227 // ClienteDAOImp
  name "cliDAO"   xyz 356 4 2000 life_line_z 2000
classinstance 472328 class_ref 132099 // ConnectionManager
  name "connManager"   xyz 864 4 2000 life_line_z 2000
classinstance 472456 class_ref 128259 // ClienteDTO
  name ""   xyz 1226 354 2000 life_line_z 2000
classinstance 472584 class_ref 129667 // DAOExcepcion
  name ""   xyz 1392 486 2000 life_line_z 2000
fragment 473992 "opt"
  xyzwh 423 314 1990 931 116
end
textcanvas 474120 "[rs.next()]"
  xyzwh 511 318 2020 137 26
fragment 474504 "break"
  xyzwh 423 446 1990 1107 116
end
textcanvas 474632 "[SQLException]"
  xyzwh 511 450 2020 170 26
note 475016 "Continuación de AlquilerVehiculos.getCliente. La DAOExcepcion se propaga hasta la capa que llamó."
  xyzwh 20 630 2000 760 110
durationcanvas 472712 classinstance_ref 472072 // dal:DAL
  xyzwh 228 96 2010 11 488
end
durationcanvas 472968 classinstance_ref 472200 // cliDAO:ClienteDAOImp
  xyzwh 466 138 2010 11 440
end
durationcanvas 473224 classinstance_ref 472328 // connManager:ConnectionManager
  xyzwh 1030 180 2010 11 32
end
durationcanvas 473480 classinstance_ref 472328 // connManager:ConnectionManager
  xyzwh 1030 228 2010 11 32
end
durationcanvas 473736 classinstance_ref 472328 // connManager:ConnectionManager
  xyzwh 1030 276 2010 11 32
end
durationcanvas 474248 classinstance_ref 472456 // :ClienteDTO
  xyzwh 1284 388 2010 11 34
end
durationcanvas 474760 classinstance_ref 472584 // :DAOExcepcion
  xyzwh 1466 520 2010 11 34
end
lostfoundmsgsupport 475144 xyz 10 91 2015
msg 472840 found_synchronous
  from lostfoundmsgsupport_ref 475144
  to durationcanvas_ref 472712
  yz 96 2030 msg operation_ref 132867 // "getCliente(in dni : String) : ClienteDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "dni"
  label_xy 24 72
msg 473096 synchronous
  from durationcanvas_ref 472712
  to durationcanvas_ref 472968
  yz 138 2030 msg operation_ref 164355 // "buscarCliente(in dni : String) : ClienteDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "dni"
  label_xy 249 114
msg 473352 synchronous
  from durationcanvas_ref 472968
  to durationcanvas_ref 473224
  yz 180 2030 msg operation_ref 165635 // "connect() : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 487 156
msg 473608 synchronous
  from durationcanvas_ref 472968
  to durationcanvas_ref 473480
  yz 228 2030 msg operation_ref 166019 // "queryDB(in sql : String) : ResultSet"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "'select * from CLIENTE where DNI= ...'"
  label_xy 487 204
msg 473864 synchronous
  from durationcanvas_ref 472968
  to durationcanvas_ref 473736
  yz 276 2030 msg operation_ref 165763 // "close() : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 487 252
msg 474376 synchronous
  from durationcanvas_ref 472968
  to durationcanvas_ref 474248
  yz 370 2030 explicitmsg "new ClienteDTO(...)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 487 346
msg 474888 synchronous
  from durationcanvas_ref 472968
  to durationcanvas_ref 474760
  yz 502 2030 explicitmsg "new DAOExcepcion(e)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 487 478
end
