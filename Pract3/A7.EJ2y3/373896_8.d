format 224

classinstance 488072 class_ref 128643 // DAL
  name "dal"   xyz 178 4 2000 life_line_z 2000
classinstance 488200 class_ref 132995 // ReservaDAOImp
  name "resDAO"   xyz 334 4 2000 life_line_z 2000
classinstance 488328 class_ref 132099 // ConnectionManager
  name "connManager"   xyz 830 4 2000 life_line_z 2000
classinstance 488456 class_ref 129795 // ReservaDTO
  name ""   xyz 1194 354 2000 life_line_z 2000
classinstance 488584 class_ref 129667 // DAOExcepcion
  name ""   xyz 1358 486 2000 life_line_z 2000
fragment 489992 "opt"
  xyzwh 401 314 1990 920 116
end
textcanvas 490120 "[rs.next()]"
  xyzwh 489 318 2020 137 26
fragment 490504 "break"
  xyzwh 401 446 1990 1096 116
end
textcanvas 490632 "[SQLException]"
  xyzwh 489 450 2020 170 26
note 491016 "Continuación de AlquilerVehiculos.getReserva / Entrega.Entrega. La DAOExcepcion se propaga hasta la capa que llamó."
  xyzwh 20 630 2000 760 110
durationcanvas 488712 classinstance_ref 488072 // dal:DAL
  xyzwh 216 96 2010 11 488
end
durationcanvas 488968 classinstance_ref 488200 // resDAO:ReservaDAOImp
  xyzwh 455 138 2010 11 440
end
durationcanvas 489224 classinstance_ref 488328 // connManager:ConnectionManager
  xyzwh 996 180 2010 11 32
end
durationcanvas 489480 classinstance_ref 488328 // connManager:ConnectionManager
  xyzwh 996 228 2010 11 32
end
durationcanvas 489736 classinstance_ref 488328 // connManager:ConnectionManager
  xyzwh 996 276 2010 11 32
end
durationcanvas 490248 classinstance_ref 488456 // :ReservaDTO
  xyzwh 1258 388 2010 11 34
end
durationcanvas 490760 classinstance_ref 488584 // :DAOExcepcion
  xyzwh 1432 520 2010 11 34
end
lostfoundmsgsupport 491144 xyz 10 91 2015
msg 488840 found_synchronous
  from lostfoundmsgsupport_ref 491144
  to durationcanvas_ref 488712
  yz 96 2030 msg operation_ref 132611 // "getReserva(in id : int) : ReservaDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "id"
  label_xy 24 72
msg 489096 synchronous
  from durationcanvas_ref 488712
  to durationcanvas_ref 488968
  yz 138 2030 msg operation_ref 168195 // "buscarReserva(in id : int) : ReservaDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "id"
  label_xy 238 114
msg 489352 synchronous
  from durationcanvas_ref 488968
  to durationcanvas_ref 489224
  yz 180 2030 msg operation_ref 165635 // "connect() : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 465 156
msg 489608 synchronous
  from durationcanvas_ref 488968
  to durationcanvas_ref 489480
  yz 228 2030 msg operation_ref 166019 // "queryDB(in sql : String) : ResultSet"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "'select * from RESERVA where ID= ...'"
  label_xy 465 204
msg 489864 synchronous
  from durationcanvas_ref 488968
  to durationcanvas_ref 489736
  yz 276 2030 msg operation_ref 165763 // "close() : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 465 252
msg 490376 synchronous
  from durationcanvas_ref 488968
  to durationcanvas_ref 490248
  yz 370 2030 explicitmsg "new ReservaDTO(...)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 465 346
msg 490888 synchronous
  from durationcanvas_ref 488968
  to durationcanvas_ref 490760
  yz 502 2030 explicitmsg "new DAOExcepcion(e)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 465 478
end
