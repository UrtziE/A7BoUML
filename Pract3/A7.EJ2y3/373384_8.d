format 224

classinstance 475272 class_ref 128643 // DAL
  name "dal"   xyz 178 4 2000 life_line_z 2000
classinstance 475400 class_ref 132739 // EntregaDAOImp
  name "entDAO"   xyz 334 4 2000 life_line_z 2000
classinstance 475528 class_ref 132099 // ConnectionManager
  name "connManager"   xyz 830 4 2000 life_line_z 2000
classinstance 475656 class_ref 129923 // EntregaDTO
  name ""   xyz 1194 354 2000 life_line_z 2000
classinstance 475784 class_ref 129667 // DAOExcepcion
  name ""   xyz 1358 486 2000 life_line_z 2000
fragment 477192 "opt"
  xyzwh 401 314 1990 920 116
end
textcanvas 477320 "[rs.next()]"
  xyzwh 489 318 2020 137 26
fragment 477704 "break"
  xyzwh 401 446 1990 1096 116
end
textcanvas 477832 "[SQLException]"
  xyzwh 489 450 2020 170 26
note 478216 "Continuación de AlquilerVehiculos.getEntrega. La DAOExcepcion se propaga hasta la capa que llamó."
  xyzwh 20 630 2000 760 110
durationcanvas 475912 classinstance_ref 475272 // dal:DAL
  xyzwh 216 96 2010 11 488
end
durationcanvas 476168 classinstance_ref 475400 // entDAO:EntregaDAOImp
  xyzwh 454 138 2010 11 440
end
durationcanvas 476424 classinstance_ref 475528 // connManager:ConnectionManager
  xyzwh 996 180 2010 11 32
end
durationcanvas 476680 classinstance_ref 475528 // connManager:ConnectionManager
  xyzwh 996 228 2010 11 32
end
durationcanvas 476936 classinstance_ref 475528 // connManager:ConnectionManager
  xyzwh 996 276 2010 11 32
end
durationcanvas 477448 classinstance_ref 475656 // :EntregaDTO
  xyzwh 1257 388 2010 11 34
end
durationcanvas 477960 classinstance_ref 475784 // :DAOExcepcion
  xyzwh 1432 520 2010 11 34
end
lostfoundmsgsupport 478344 xyz 10 91 2015
msg 476040 found_synchronous
  from lostfoundmsgsupport_ref 478344
  to durationcanvas_ref 475912
  yz 96 2030 msg operation_ref 133123 // "getEntrega(in id : int) : EntregaDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "id"
  label_xy 24 72
msg 476296 synchronous
  from durationcanvas_ref 475912
  to durationcanvas_ref 476168
  yz 138 2030 msg operation_ref 167299 // "buscarEntrega(in id : int) : EntregaDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "id"
  label_xy 238 114
msg 476552 synchronous
  from durationcanvas_ref 476168
  to durationcanvas_ref 476424
  yz 180 2030 msg operation_ref 165635 // "connect() : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 465 156
msg 476808 synchronous
  from durationcanvas_ref 476168
  to durationcanvas_ref 476680
  yz 228 2030 msg operation_ref 166019 // "queryDB(in sql : String) : ResultSet"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "'select * from ENTREGA where ID= ...'"
  label_xy 465 204
msg 477064 synchronous
  from durationcanvas_ref 476168
  to durationcanvas_ref 476936
  yz 276 2030 msg operation_ref 165763 // "close() : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 465 252
msg 477576 synchronous
  from durationcanvas_ref 476168
  to durationcanvas_ref 477448
  yz 370 2030 explicitmsg "new EntregaDTO(...)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 465 346
msg 478088 synchronous
  from durationcanvas_ref 476168
  to durationcanvas_ref 477960
  yz 502 2030 explicitmsg "new DAOExcepcion(e)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 465 478
end
