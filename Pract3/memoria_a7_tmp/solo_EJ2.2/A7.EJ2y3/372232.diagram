format 224

classinstance 441736 class_ref 131203 // AlquilerVehiculos
  name "alq"   xyz 530 4 2000 life_line_z 2000
classinstance 441864 class_ref 128643 // DAL
  name "dal"   xyz 1040 4 2000 life_line_z 2000
classinstance 441992 class_ref 128387 // CocheDTO
  name "auxDTO"   xyz 1270 4 2000 life_line_z 2000
classinstance 442120 class_ref 128515 // Coche
  name "aux"   xyz 1480 344 2000 life_line_z 2000
classinstance 442248 class_ref 128131 // Categoria
  name "aux"   xyz 1688 4 2000 life_line_z 2000
continuation 443144 "continúa en DAL.obtenerCoches"
  xyzwh 1071 228 2025 364 54
fragment 443272 "loop"
  xyzwh 603 304 1990 993 346
end
textcanvas 443400 "[i < resDTO.size()]"
  xyzwh 691 308 2020 225 26
continuation 443784 "continúa en Coche.Coche"
  xyzwh 1521 414 2025 299 54
fragment 444680 "loop"
  xyzwh 603 672 1990 1223 558
end
textcanvas 444808 "[res.size() == 0 && categoria != null]"
  xyzwh 691 676 2020 434 26
fragment 444936 "loop"
  xyzwh 603 718 1990 1223 208
end
textcanvas 445064 "[i < arr.size()]"
  xyzwh 691 722 2020 192 26
fragment 445448 "opt"
  xyzwh 603 812 1990 1223 96
end
textcanvas 445576 "[aux != null]"
  xyzwh 691 816 2020 159 26
fragment 445960 "opt"
  xyzwh 603 942 1990 1223 270
end
textcanvas 446088 "[res.size() == 0]"
  xyzwh 691 946 2020 203 26
fragment 446728 "opt"
  xyzwh 603 1098 1990 1223 96
end
textcanvas 446856 "[aux != null]"
  xyzwh 691 1102 2020 159 26
note 447240 "Continuación de ControladorEntregarVehiculoReserva.listarCoches. Si en la sucursal no hay coches de la categoría reservada se vuelve a buscar con la categoría superior hasta que haya coches o no queden categorías."
  xyzwh 20 1292 2000 760 150
durationcanvas 442376 classinstance_ref 441736 // alq:AlquilerVehiculos
  xyzwh 630 96 2010 11 1150
  overlappingdurationcanvas 442632
    xyzwh 636 150 2011 11 516
    overlappingdurationcanvas 444168
      xyzwh 642 560 2012 11 34
    end
  end
  overlappingdurationcanvas 446216
    xyzwh 636 1010 2011 11 34
  end
end
durationcanvas 442888 classinstance_ref 441864 // dal:DAL
  xyzwh 1078 194 2010 11 104
end
durationcanvas 443528 classinstance_ref 442120 // aux:Coche
  xyzwh 1531 378 2010 11 106
end
durationcanvas 443912 classinstance_ref 441992 // auxDTO:CocheDTO
  xyzwh 1363 500 2010 11 32
end
durationcanvas 444424 classinstance_ref 442120 // aux:Coche
  xyzwh 1531 610 2010 11 32
end
durationcanvas 445192 classinstance_ref 442120 // aux:Coche
  xyzwh 1531 774 2010 11 32
end
durationcanvas 445704 classinstance_ref 442248 // aux:Categoria
  xyzwh 1756 868 2010 11 32
end
durationcanvas 446472 classinstance_ref 442248 // aux:Categoria
  xyzwh 1756 1060 2010 11 32
end
durationcanvas 446984 classinstance_ref 442248 // aux:Categoria
  xyzwh 1756 1154 2010 11 32
end
lostfoundmsgsupport 447368 xyz 10 91 2015
msg 442504 found_synchronous
  from lostfoundmsgsupport_ref 447368
  to durationcanvas_ref 442376
  yz 96 2030 msg operation_ref 140675 // "listarVehiculosCategoriaSucursal(in categoria : String, in sucursal : int) : Coche"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "categoria, sucursal"
  label_xy 24 72
reflexivemsg 442760 synchronous
  to durationcanvas_ref 442632
  yz 150 2030 msg operation_ref 140547 // "listarVehiculosSucursal(in sucursal : int) : Coche"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "sucursal"
  label_xy 675 126
msg 443016 synchronous
  from durationcanvas_ref 442632
  to durationcanvas_ref 442888
  yz 194 2030 msg operation_ref 132355 // "obtenerCoches(in sucursal : int) : CocheDTO"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "sucursal"
  label_xy 667 170
msg 443656 synchronous
  from durationcanvas_ref 442632
  to durationcanvas_ref 443528
  yz 360 2030 explicitmsg "new Coche(auxDTO)"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 667 336
msg 444040 synchronous
  from durationcanvas_ref 442632
  to durationcanvas_ref 443912
  yz 500 2030 msg operation_ref 130819 // "getEsta_en() : int"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 667 476
reflexivemsg 444296 synchronous
  to durationcanvas_ref 444168
  yz 560 2030 msg operation_ref 143491 // "getSucursal(in idSucursal : int) : Sucursal"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "esta_en"
  label_xy 675 536
msg 444552 synchronous
  from durationcanvas_ref 442632
  to durationcanvas_ref 444424
  yz 610 2030 msg operation_ref 150403 // "setEsta_en(inout esta_en : Sucursal) : void"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "sucursal"
  label_xy 667 586
msg 445320 synchronous
  from durationcanvas_ref 442376
  to durationcanvas_ref 445192
  yz 774 2030 msg operation_ref 150019 // "getTiene() : Categoria"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 667 750
msg 445832 synchronous
  from durationcanvas_ref 442376
  to durationcanvas_ref 445704
  yz 868 2030 msg operation_ref 144131 // "getNombre() : String"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 667 844
reflexivemsg 446344 synchronous
  to durationcanvas_ref 446216
  yz 1010 2030 msg operation_ref 143107 // "getCategoria(in nombre : String) : Categoria"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  args "categoria"
  label_xy 675 986
msg 446600 synchronous
  from durationcanvas_ref 442376
  to durationcanvas_ref 446472
  yz 1060 2030 msg operation_ref 145667 // "getSuperior() : Categoria"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 667 1036
msg 447112 synchronous
  from durationcanvas_ref 442376
  to durationcanvas_ref 446984
  yz 1154 2030 msg operation_ref 144131 // "getNombre() : String"
  show_full_operations_definition default show_class_of_operation default drawing_language default show_context_mode default
  label_xy 667 1130
end
