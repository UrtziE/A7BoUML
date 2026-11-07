format 224

classcanvas 128003 class_ref 129795 // ReservaDTO
  classdiagramsettings member_max_width 0 end
  xyz 250.6 3796.9 2000
end
classcanvas 128008 class_ref 133507 // ControladorCasoDeUso
  classdiagramsettings member_max_width 0 end
  xyz 910.5 187.3 2006
end
classcanvas 128131 class_ref 128387 // CocheDTO
  classdiagramsettings member_max_width 0 end
  xyz 1250.8 4216.3 2000
end
classcanvas 128259 class_ref 130179 // EmpleadoDTO
  classdiagramsettings member_max_width 0 end
  xyz 250 4216.9 2000
end
classcanvas 128387 class_ref 129923 // EntregaDTO
  classdiagramsettings member_max_width 0 end
  xyz 2250.2 3796.5 2000
end
classcanvas 128392 class_ref 133763 // ControladorPrincipal
  classdiagramsettings member_max_width 0 end
  xyz 66.5 88.3 3005
end
classcanvas 128515 class_ref 129667 // DAOExcepcion
  classdiagramsettings member_max_width 0 end
  xyz 2250.4 4216.3 2000
end
classcanvas 128643 class_ref 132355 // CocheDAOImp
  classdiagramsettings member_max_width 0 end
  xyz 835.9 3025.1 2000
end
classcanvas 128771 class_ref 132611 // EmpleadoDAOImp
  classdiagramsettings member_max_width 0 end
  xyz 234.9 3025.1 2000
end
classcanvas 128776 class_ref 130819 // Sucursal
  classdiagramsettings member_max_width 0 end
  xyz 1709.3 1190.8 3005
end
classcanvas 128899 class_ref 132995 // ReservaDAOImp
  classdiagramsettings member_max_width 0 end
  xyz 1401.9 3025.1 2000
end
classcanvas 129027 class_ref 129411 // ICocheDAO
  classdiagramsettings member_max_width 0 end
  xyz 860.2 2691.9 2006
end
classcanvas 129283 class_ref 129539 // IEmpleadoDAO
  classdiagramsettings member_max_width 0 end
  xyz 265.4 2691.9 2006
end
classcanvas 129667 class_ref 129155 // IReservaDAO
  classdiagramsettings member_max_width 0 end
  xyz 1436 2691.9 2006
end
classcanvas 129923 class_ref 132739 // EntregaDAOImp
  classdiagramsettings member_max_width 0 end
  xyz 1983.6 3025.1 2000
end
classcanvas 130051 class_ref 129283 // IEntregaDAO
  classdiagramsettings member_max_width 0 end
  xyz 2015.8 2691.9 2006
end
classcanvas 130056 class_ref 128131 // Categoria
  classdiagramsettings member_max_width 0 end
  xyz 1559.6 724.2 3005
end
classcanvas 130307 class_ref 134147 // ControladorEntregarVehiculoReserva
  classdiagramsettings member_max_width 0 end
  xyz 1453.9 60.5 2000
end
classcanvas 130435 class_ref 128515 // Coche
  classdiagramsettings member_max_width 0 end
  xyz 2885.8 1190.8 2000
end
classcanvas 131075 class_ref 130435 // Empleado
  classdiagramsettings member_max_width 0 end
  xyz 1966 1377.6 2000
end
classcanvas 131080 class_ref 132099 // ConnectionManager
  classdiagramsettings member_max_width 0 end
  xyz 1378.5 3327.2 3023
end
classcanvas 131203 class_ref 130563 // Entrega
  classdiagramsettings member_max_width 0 end
  xyz 1610.6 1697.4 2000
end
classcanvas 131587 class_ref 130691 // Reserva
  classdiagramsettings member_max_width 0 end
  xyz 588.6 1162 2000
end
note 131848 "Controlador principal de la aplicación. Sus manejadores de evento abren cada caso de uso; el de entregar vehículo reservado es el que inicia este."
  xyzwh 64.8 396.7 2000 330 230
note 132104 "Es la clase base de todos los controladores. Su método initCasoDeUso carga la vista, crea el controlador y asocia su ventana (Stage)."
  xyzwh 881 298.1 2000 330 202
note 132360 "Controlador de la ventana Entregar vehículo reservado. Muestra las reservas sin entrega de una sucursal y los coches disponibles, valida los datos y pide a AlquilerVehiculos que cree la entrega."
  xyzwh 1926.7 61.1 2000 330 286
note 132616 "Fachada de la lógica (Singleton). Guarda en memoria los clientes, reservas, categorías... y se comunica con la persistencia mediante el DAL."
  xyzwh 651.5 2230.3 2000 330 230
note 132872 "Representa la reserva de un vehículo que hace un cliente, con fecha de recogida, devolución y modalidad del alquiler. Se relaciona con cliente, categoría, sucursales de recogida y devolución y la entrega si existe."
  xyzwh 218.4 1161.8 2000 330 286
note 133128 "Representa la entrega del vehículo con la fecha, tipo de seguro, kilómetros y combustible. Relaciona la reserva, el coche entregado y el empleado que la realiza."
  xyzwh 1609.8 1919.8 2000 330 230
note 133384 "Vehículo de la empresa, identificado con matrícula y kilómetros actuales. Pertenece a una categoría y está en una sucursal."
  xyzwh 2884.8 1325.2 2000 330 174
note 133640 "Categoría del vehículo con sus precios por modalidad y tipo de seguro. Puede tener una categoría superior, que se usa cuando no hay coches disponibles de la categoría reservada."
  xyzwh 2311 200.8 2000 330 258
note 133896 "Oficina de la empresa, identificada por su id y dirección. En ella hay coches y empleados, y es el lugar de recogida y devolución de las reservas."
  xyzwh 2352.9 1549.8 3010 330 230
note 134152 "Trabajador de una sucursal y quien hace la entrega del vehículo. Tiene DNI, nombre y si es administrador."
  xyzwh 1966 1694 2006 330 174
note 134664 "Cliente que hace las reservas. Se guardan sus datos personales, la fecha del carné y los datos de su tarjeta."
  xyzwh 224.8 2106.4 2000 330 174
note 134920 "Capa de acceso a datos (Singleton). Crea los DAO y ofrece a la lógica métodos de consulta y creación que trabajan con DTOs."
  xyzwh 1346 2248.1 2000 330 202
classcanvas 135171 class_ref 131203 // AlquilerVehiculos
  classdiagramsettings member_max_width 0 end
  xyz 1020.3 2229.9 2010
end
note 135176 "DTO con los datos de una reserva tal como se guardan en la base de datos. Las relaciones se guardan como claves: DNI del cliente, nombre de la categoría e ids de las sucursales."
  xyzwh 511 3796.5 2000 330 258
note 135432 "DTO con los datos de una entrega. Guarda la matrícula del coche y el DNI del empleado."
  xyzwh 2476 3797.3 2000 330 146
note 135688 "DTO con los datos de un coche: matrícula, kilómetros, sucursal y categoría."
  xyzwh 1429.8 4217.3 2000 330 146
note 135944 "DTO con los datos de un empleado: DNI, nombre y si es administrador."
  xyzwh 479.8 4216.5 2000 330 118
classcanvas 136195 class_ref 128643 // DAL
  classdiagramsettings member_max_width 0 end
  xyz 1096 2403.7 3005
end
note 136200 "DTO con los datos de un cliente para guardarlos o recuperarlos de la base de datos."
  xyzwh 1518.4 3797.3 2000 330 146
note 136456 "Declara las operaciones de persistencia de reservas: buscar, contar, crear y obtener por sucursal de origen."
  xyzwh 1604.8 2782.1 2000 330 174
note 136712 "Declara las operaciones de persistencia de entregas: crear y buscar."
  xyzwh 1914.8 2443.9 2000 330 118
classcanvas 137347 class_ref 128259 // ClienteDTO
  classdiagramsettings member_max_width 0 end
  xyz 1250.4 3796.9 2000
end
note 137352 "Declara las operaciones de persistencia de coches: listar por sucursal, buscar por matrícula y modificar kilómetros."
  xyzwh 1019.8 2692.1 2000 330 174
classcanvas 137475 class_ref 128899 // IClienteDAO
  classdiagramsettings member_max_width 0 end
  xyz 2601 2691.9 3011
end
note 137608 "Declara las operaciones de persistencia de empleados: buscar por DNI y crear."
  xyzwh 84.8 2533.9 2000 330 118
classcanvas 137731 class_ref 132227 // ClienteDAOImp
  classdiagramsettings member_max_width 0 end
  xyz 2570.2 3025.1 3017
end
note 137864 "Declara las operaciones de persistencia de clientes: buscar por DNI y crear."
  xyzwh 2494.8 2533.9 2000 330 118
classcanvas 137987 class_ref 131331 // Cliente
  classdiagramsettings member_max_width 0 end
  xyz 282.3 1714.2 2016
end
note 138120 "Gestiona la conexión con la base de datos. La usan todas las implementaciones DAO para conectarse y ejecutar sus sentencias SQL."
  xyzwh 1334.8 3466.2 2000 330 202
note 138376 "Implementación de IReservaDAO. Accede a la base de datos con SQL usando ConnectionManager."
  xyzwh 2029.1 3282.5 2000 330 146
note 138632 "Implementación de IEntregaDAO. Inserta y consulta las entregas en la base de datos a través de ConnectionManager."
  xyzwh 2257.2 2812.1 2000 330 174
note 138888 "Implementación de ICocheDAO. Consulta los coches de una sucursal y actualiza sus kilómetros en la base de datos."
  xyzwh 425.5 2812.1 2000 330 174
note 139144 "Implementación de IEmpleadoDAO. Recupera de la base de datos los datos de un empleado a partir de su DNI."
  xyzwh 115.5 3108.3 2000 330 174
note 139400 "Implementación de IClienteDAO. Busca e inserta clientes en la base de datos."
  xyzwh 2569.8 3107.5 2000 330 146
note 139656 "Excepción propia que se lanza cuando falla una operación de persistencia. Se propaga por las capas hasta el controlador, que la muestra con un aviso."
  xyzwh 2468.6 4216.9 2000 330 202
relationcanvas 128136 relation_ref 135555 // <generalisation>
  from ref 130307 z 2007 to ref 128008
  no_role_a no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 128648 relation_ref 135043 // <unidirectional association>
  from ref 128008 z 3006 to ref 128392
  role_a_pos 354 177 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 128904 relation_ref 132483 // <unidirectional association>
  from ref 128776 z 3006 stereotype "<<Hashtable>>" xyz 1295 1205 3006 to ref 131587
  role_a_pos 748 1201 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 129032 relation_ref 132611 // <unidirectional association>
  from ref 128776 z 3006 stereotype "<<Hashtable>>" xyz 1295 1241 3006 to ref 131587
  role_a_pos 748 1201 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 129155 relation_ref 133507 // <realization>
  from ref 128643 z 2007 to ref 129027
  no_role_a no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 129160 relation_ref 132739 // <unidirectional association>
  from ref 128776 z 3006 stereotype "<<Hashtable>>" xyz 2310 1205 3006 to ref 130435
  role_a_pos 2813 1205 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 129288 relation_ref 132867 // <unidirectional association>
  from ref 128776 z 3006 stereotype "<<Hashtable>>" xyz 1897 1295 3006 to ref 131075
  role_a_pos 1799 1366 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 129411 relation_ref 133763 // <realization>
  from ref 128771 z 2007 to ref 129283
  no_role_a no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 129416 relation_ref 129667 // <unidirectional association>
  from ref 135171 z 3006 stereotype "<<Hashtable>>" xyz 1418 1772 3006 to ref 128776
  role_a_pos 1727 1289 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 129544 relation_ref 132099 // <unidirectional association>
  from ref 131587 z 3006 to ref 128776
  role_a_pos 1583 1204 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 129672 relation_ref 132227 // <unidirectional association>
  from ref 131587 z 3006 to ref 128776
  role_a_pos 1565 1204 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 129795 relation_ref 134275 // <realization>
  from ref 128899 z 2007 to ref 129667
  no_role_a no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 129800 relation_ref 130563 // <unidirectional association>
  from ref 130435 z 3006 to ref 128776
  role_a_pos 1809 1205 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 129928 relation_ref 131075 // <unidirectional association>
  from ref 131075 z 3006 to ref 128776
  role_a_pos 1809 1245 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 130179 relation_ref 134019 // <realization>
  from ref 129923 z 2007 to ref 130051
  no_role_a no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 130184 relation_ref 130179 // <unidirectional association>
  from ref 130056 z 3006 to point 1636 664
  line 130312 z 3006 to point 1703 664
  line 130440 z 3006 to ref 130056
  role_a_pos 1696 694 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 130563 relation_ref 136707 // <unidirectional association>
  from ref 130307 z 2001 stereotype "<<TableView>>" xyz 2341 715 3000 to ref 130435
  role_a_pos 2810 1168 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 130568 relation_ref 130307 // <unidirectional association>
  from ref 130056 z 3006 stereotype "<<Hashtable>>" xyz 2287 992 3006 to ref 130435
  role_a_pos 2747 1189 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 130691 relation_ref 136835 // <unidirectional association>
  from ref 130307 z 2001 stereotype "<<TableColumn>>" xyz 2341 751 3000 to ref 130435
  role_a_pos 2766 1168 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 130696 relation_ref 129539 // <unidirectional association>
  from ref 135171 z 3006 stereotype "<<Hashtable>>" xyz 1367 1616 3006 to ref 130056
  role_a_pos 1617 919 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 130819 relation_ref 136963 // <unidirectional association>
  from ref 130307 z 2001 stereotype "<<TableColumn>>" xyz 2141 715 3000 to ref 130435
  role_a_pos 2792 1168 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 130824 relation_ref 131971 // <unidirectional association>
  from ref 131587 z 3006 to ref 130056
  role_a_pos 1433 818 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 130947 relation_ref 137091 // <unidirectional association>
  from ref 130307 z 2001 stereotype "<<TableColumn>>" xyz 2141 751 3000 to ref 130435
  role_a_pos 2781 1168 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 130952 relation_ref 130435 // <unidirectional association>
  from ref 130435 z 3006 to ref 130056
  role_a_pos 1747 817 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 131208 relation_ref 133379 // <unidirectional association>
  from ref 137731 z 3024 to ref 131080
  role_a_pos 1582 3311 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 131331 relation_ref 131203 // <unidirectional association>
  from ref 131203 z 2001 to ref 130435
  role_a_pos 2758 1223 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 131336 relation_ref 133635 // <unidirectional association>
  from ref 128643 z 3024 to ref 131080
  role_a_pos 1283 3302 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 131459 relation_ref 131587 // <unidirectional association>
  from ref 131203 z 2001 to ref 131075
  role_a_pos 1824 1449 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 131464 relation_ref 134403 // <unidirectional association>
  from ref 128899 z 3024 to ref 131080
  role_a_pos 1485 3297 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 131592 relation_ref 134147 // <unidirectional association>
  from ref 129923 z 3024 to ref 131080
  role_a_pos 1561 3292 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 131715 relation_ref 132355 // <unidirectional association>
  from ref 131587 z 2001 to ref 131203
  role_a_pos 1512 1723 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 131720 relation_ref 133891 // <unidirectional association>
  from ref 128771 z 3024 to ref 131080
  role_a_pos 1262 3315 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 131843 relation_ref 131459 // <unidirectional association>
  from ref 131203 z 2001 to ref 131587
  role_a_pos 748 1247 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 131971 relation_ref 135683 // <unidirectional association>
  from ref 130307 z 2001 stereotype "<<TableView>>" xyz 1179 702 3000 to ref 131587
  role_a_pos 744 1132 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 132099 relation_ref 135811 // <unidirectional association>
  from ref 130307 z 2001 stereotype "<<TableColumn>>" xyz 1179 738 3000 to ref 131587
  role_a_pos 744 1132 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 132227 relation_ref 135939 // <unidirectional association>
  from ref 130307 z 2001 stereotype "<<TableColumn>>" xyz 979 702 3000 to ref 131587
  role_a_pos 744 1132 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 132355 relation_ref 136067 // <unidirectional association>
  from ref 130307 z 2001 stereotype "<<TableColumn>>" xyz 979 738 3000 to ref 131587
  role_a_pos 744 1132 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 132483 relation_ref 136195 // <unidirectional association>
  from ref 130307 z 2001 stereotype "<<TableColumn>>" xyz 1217 663 3000 to ref 131587
  role_a_pos 744 1132 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 132611 relation_ref 136323 // <unidirectional association>
  from ref 130307 z 2001 stereotype "<<TableColumn>>" xyz 1017 663 3000 to ref 131587
  role_a_pos 744 1132 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 132739 relation_ref 136451 // <unidirectional association>
  from ref 130307 z 2001 stereotype "<<TableColumn>>" xyz 1141 777 3000 to ref 131587
  role_a_pos 744 1132 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 132867 relation_ref 136579 // <unidirectional association>
  from ref 130307 z 2001 stereotype "<<TableColumn>>" xyz 941 777 3000 to ref 131587
  role_a_pos 744 1132 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 135299 relation_ref 129411 // <unidirectional association>
  from ref 135171 z 2011 stereotype "<<Hashtable>>" xyz 943 1785 2011 to ref 131587
  role_a_pos 705 1309 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 135427 relation_ref 129795 // <unidirectional association>
  from ref 135171 z 2011 stereotype "<<Hashtable>>" xyz 1368 2022 2011 to ref 131203
  role_a_pos 1460 1783 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 135555 relation_ref 130051 // <unidirectional association>
  from ref 135171 z 2011 to point 1281 2209
  line 135683 z 2011 to point 1281 2295
  line 135811 z 2011 to ref 135171
  role_a_pos 1198 2245 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 136323 relation_ref 128387 // <unidirectional association>
  from ref 136195 z 3006 to ref 129667
  role_a_pos 1391 2668 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 136451 relation_ref 128515 // <unidirectional association>
  from ref 136195 z 3006 to ref 130051
  role_a_pos 1943 2674 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 136579 relation_ref 128643 // <unidirectional association>
  from ref 136195 z 3006 to ref 129027
  role_a_pos 953 2661 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 136707 relation_ref 128771 // <unidirectional association>
  from ref 136195 z 3006 to ref 129283
  role_a_pos 419 2661 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 136835 relation_ref 128899 // <unidirectional association>
  from ref 136195 z 3006 to point 1206 2383
  line 136963 z 3006 to point 1206 2469
  line 137091 z 3006 to ref 136195
  role_a_pos 1154 2414 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 137219 relation_ref 129923 // <unidirectional association>
  from ref 135171 z 3006 to ref 136195
  role_a_pos 1127 2373 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 137603 relation_ref 128131 // <unidirectional association>
  from ref 136195 z 3012 to ref 137475
  role_a_pos 2538 2680 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 137859 relation_ref 133251 // <realization>
  from ref 137731 z 3018 to ref 137475
  no_role_a no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 138115 relation_ref 129283 // <unidirectional association>
  from ref 135171 z 2017 stereotype "<<Hashtable>>" xyz 827 2068 2017 to ref 137987
  role_a_pos 466 1887 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
relationcanvas 138243 relation_ref 131843 // <unidirectional association>
  from ref 131587 z 2017 to ref 137987
  role_a_pos 453 1684 3000 no_role_b
  no_multiplicity_a no_multiplicity_b
end
line 131976 -_-_
  from ref 128392 z 3006 to ref 131848
line 132232 -_-_
  from ref 128008 z 2007 to ref 132104
line 132488 -_-_
  from ref 130307 z 2001 to ref 132360
line 132744 -_-_
  from ref 135171 z 2011 to ref 132616
line 133000 -_-_
  from ref 131587 z 2001 to ref 132872
line 133256 -_-_
  from ref 131203 z 2001 to ref 133128
line 133512 -_-_
  from ref 130435 z 2001 to ref 133384
line 133768 -_-_
  from ref 130056 z 3006 to ref 133640
line 134024 -_-_
  from ref 128776 z 3011 to ref 133896
line 134280 -_-_
  from ref 131075 z 2012 to ref 134152
line 134792 -_-_
  from ref 137987 z 2017 to ref 134664
line 135048 -_-_
  from ref 136195 z 3007 to ref 134920
line 135304 -_-_
  from ref 128003 z 2001 to ref 135176
line 135560 -_-_
  from ref 128387 z 2001 to ref 135432
line 135816 -_-_
  from ref 128131 z 2001 to ref 135688
line 136072 -_-_
  from ref 128259 z 2001 to ref 135944
line 136328 -_-_
  from ref 137347 z 2001 to ref 136200
line 136840 -_-_
  from ref 130051 z 2007 to ref 136712
line 137224 -_-_
  from ref 129667 z 3007 to ref 136456
line 137480 -_-_
  from ref 129027 z 2007 to ref 137352
line 137736 -_-_
  from ref 129283 z 2007 to ref 137608
line 137992 -_-_
  from ref 137475 z 3012 to ref 137864
line 138248 -_-_
  from ref 131080 z 3024 to ref 138120
line 138504 -_-_
  from ref 128899 z 3025 to ref 138376
line 138760 -_-_
  from ref 129923 z 2001 to ref 138632
line 139016 -_-_
  from ref 128643 z 2001 to ref 138888
line 139272 -_-_
  from ref 128771 z 2001 to ref 139144
line 139528 -_-_
  from ref 137731 z 3018 to ref 139400
line 139784 -_-_
  from ref 128515 z 2001 to ref 139656
end
