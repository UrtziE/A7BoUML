from pathlib import Path
from io import BytesIO
import re, sys, textwrap
from PIL import Image, ImageDraw, ImageFont
from docx import Document
from docx.shared import Cm, Pt, RGBColor
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.oxml import OxmlElement
from docx.oxml.ns import qn

root=Path.cwd()
model=root/'A7.EJ2y3'
work=root/'memoria_a7_tmp'
def read(p): return p.read_text(encoding='cp1252', errors='replace')
project=read(model/'A7.EJ2y3.prj').split('classview 128389')[1].split('componentview')[0]
seqs=[(int(n),s) for n,s in re.findall(r'sequencediagram (\d+) "([^"]+)"',project)]
assert len(seqs)==24
classes=[s for s in re.findall(r'^classcanvas .+? // (\w+)',read(model/'128389.diagram'),re.M)]
assert len(classes)==29

D=Document()
sec=D.sections[0]
sec.page_width,sec.page_height=Cm(21),Cm(29.7)
sec.top_margin,sec.bottom_margin=Cm(1.85),Cm(1.65)
sec.left_margin=sec.right_margin=Cm(2)
sec.footer_distance=Cm(.8)
sec.header_distance=Cm(.8)
ink=RGBColor.from_string('000000')
styles=D.styles
for nm,size in [('Normal',10.5),('Title',26),('Heading 1',17),('Heading 2',13),('Heading 3',11),('Caption',9)]:
    s=styles[nm]
    s.font.name='Calibri'
    s.font.size=Pt(size)
    s.font.color.rgb=ink
    if nm.startswith('Heading'):
        s.paragraph_format.space_before=Pt(9)
        s.paragraph_format.space_after=Pt(4)
normal=styles['Normal'].paragraph_format
normal.space_after=Pt(6)
normal.line_spacing=1.12
header=sec.header.paragraphs[0]
header.text='MANTENIMIENTO Y EVOLUCIÓN DEL SOFTWARE  /  PROYECTO A7'
header.runs[0].font.size=Pt(8)
footer=sec.footer.paragraphs[0]
footer.alignment=WD_ALIGN_PARAGRAPH.RIGHT
footer.add_run('Práctica 3   ·   ').font.size=Pt(8)
field=OxmlElement('w:fldSimple'); field.set(qn('w:instr'),'PAGE'); footer._p.append(field)
D.core_properties.title='Práctica 3 de ingeniería inversa'
D.core_properties.subject='EJ2.2.1 y EJ2.2.2 · Entregar vehículo reservado'
D.core_properties.author='Zhijian Wu Wang'
def p(s=''): return D.add_paragraph(s)
def h(s): return D.add_heading(s,2)
def page(s):
    D.add_page_break()
    D.add_heading(s,1)
def label(a,b):
    q=p(); q.add_run(a+' ').bold=True; q.add_run(b); return q
def table(rows):
    t=D.add_table(rows=0,cols=2)
    t.style='Table Grid'; t.autofit=False
    t.columns[0].width=Cm(6.2); t.columns[1].width=Cm(10.8)
    for i,(a,b) in enumerate([('Elemento','Responsabilidad en el caso de uso')]+rows):
        row=t.add_row()
        pr=row._tr.get_or_add_trPr(); pr.append(OxmlElement('w:cantSplit'))
        if i==0: pr.append(OxmlElement('w:tblHeader'))
        for j,txt in enumerate((a,b)):
            c=row.cells[j]; c.width=Cm([6.2,10.8][j])
            if i==0:
                sh=OxmlElement('w:shd'); sh.set(qn('w:fill'),'E9EEF3'); c._tc.get_or_add_tcPr().append(sh)
            c.text=txt; par=c.paragraphs[0]
            par.paragraph_format.space_before=Pt(4); par.paragraph_format.space_after=Pt(4)
            par.paragraph_format.line_spacing=1.04
            par.runs[0].font.size=Pt(9.4); par.runs[0].bold=i==0 or j==0
    borders=OxmlElement('w:tblBorders')
    for edge in ['top','left','bottom','right','insideH','insideV']:
        el=OxmlElement('w:'+edge); el.set(qn('w:val'),'single'); el.set(qn('w:sz'),'4'); el.set(qn('w:color'),'D9D9D9'); borders.append(el)
    t._tbl.tblPr.append(borders)
    return t

blue='#264767'; dark='#182531'; muted='#54697A'; pale='#EAF1F7'
font_dir=Path('C:/Windows/Fonts')
def font(n, bold=False): return ImageFont.truetype(str(font_dir/('calibrib.ttf' if bold else 'calibri.ttf')),n)
def image(height): 
    im=Image.new('RGB',(1450,height),'white')
    return im,ImageDraw.Draw(im)
def put(im, caption):
    par=D.add_paragraph()
    par.paragraph_format.space_after=Pt(3)
    par.paragraph_format.keep_with_next=True
    par.alignment=WD_ALIGN_PARAGRAPH.CENTER
    f=BytesIO(); im.save(f,'PNG',optimize=True); f.seek(0)
    par.add_run().add_picture(f,width=Cm(17))
    c=D.add_paragraph(caption,style='Caption'); c.paragraph_format.space_before=Pt(0)
    c.paragraph_format.space_after=Pt(7)
def line_arrow(d, x, y, tx, ty, kind='open',color=blue):
    import math
    d.line((x,y,tx,ty),fill=color,width=3)
    t=math.atan2(ty-y,tx-x)
    back=16 if kind=='triangle' else 11
    pts=[(tx-back*math.cos(t)+6*math.sin(t),ty-back*math.sin(t)-6*math.cos(t)),(tx,ty),
         (tx-back*math.cos(t)-6*math.sin(t),ty-back*math.sin(t)+6*math.cos(t))]
    if kind=='triangle': d.polygon(pts,fill='white',outline=color,width=2)
    else: d.line(pts,fill=color,width=3)
def titlebox(d,x,y,w,txt,sub=None):
    hh=79 if sub else 52
    d.rounded_rectangle((x-w/2,y-hh/2,x+w/2,y+hh/2),radius=8,fill=pale,outline=blue,width=2)
    d.text((x,y-12 if sub else y),txt,font=font(28,True),fill=dark,anchor='mm')
    if sub: d.text((x,y+16),sub,font=font(22),fill=muted,anchor='mm')
def classchart(key):
    if key=='a':
        im,d=image(425)
        line_arrow(d,420,94,575,94)
        line_arrow(d,965,175,780,122,'triangle')
        line_arrow(d,767,165,278,115)
        line_arrow(d,900,240,678,345)
        line_arrow(d,1120,240,1240,345)
        titlebox(d,245,94,365,'ControladorPrincipal','Manejador del menú')
        titlebox(d,765,94,380,'ControladorCasoDeUso','Carga y asociación de la vista')
        titlebox(d,1010,207,565,'ControladorEntregarVehiculoReserva','Selección y validación')
        titlebox(d,650,370,235,'Reserva'); titlebox(d,1260,370,235,'Coche')
        d.text((975,303),'Tablas de la ventana',font=font(24),fill=muted,anchor='mm')
        return im
    if key=='b':
        im,d=image(525)
        nodes={'Cliente':(150,180,215),'Reserva':(420,180,220),'Categoria':(715,180,240),'Coche':(1015,180,205),'Sucursal':(1280,180,225),
               'Entrega':(680,375,215),'Empleado':(1200,375,215),'AlquilerVehiculos':(420,49,300),'DAL':(1015,49,175)}
        def ar(a,b,x,y,tx,ty): line_arrow(d,x,y,tx,ty)
        ar('','',570,49,927,49); ar('','',420,75,420,154)
        ar('','',310,180,258,180); ar('','',530,180,595,180)
        ar('','',912,180,835,180); ar('','',1118,180,1167,180)
        ar('','',655,349,466,206); ar('','',734,349,980,206); ar('','',788,375,1091,375)
        ar('','',1230,349,1270,207)
        d.line((390,205,390,270,1315,270,1315,209),fill=blue,width=2)
        line_arrow(d,1315,239,1315,209)
        d.text((823,253),'Recogida y devolución',font=font(23),fill=muted,anchor='mm')
        d.line((775,154,775,110,654,110,654,151),fill=blue,width=2)
        line_arrow(d,654,135,654,154)
        d.text((713,98),'Superior',font=font(21),fill=muted,anchor='mm')
        for k,(x,y,w) in nodes.items(): titlebox(d,x,y,w,k)
        d.text((40,470),'La fachada coordina las operaciones sobre el dominio y consulta la persistencia mediante DAL.',font=font(26),fill=muted)
        return im
    if key=='c':
        im,d=image(615)
        titlebox(d,290,56,380,'AlquilerVehiculos')
        line_arrow(d,482,56,597,56)
        titlebox(d,725,56,250,'DAL')
        xs=[151,438,725,1012,1299]
        for x,n in zip(xs,['Reserva','Entrega','Coche','Empleado','Cliente']):
            d.line((725,83,725,112,x,112,x,139),fill=blue,width=2)
            line_arrow(d,x,131,x,151)
            titlebox(d,x,185,262,'I'+n+'DAO','«interface»')
            line_arrow(d,x,328,x,225,'triangle')
            titlebox(d,x,355,262,n+'DAOImp')
            d.line((x,382,x,455,725,455,725,503),fill=blue,width=2)
        line_arrow(d,725,488,725,502)
        titlebox(d,725,529,360,'ConnectionManager')
        return im
    im,d=image(290)
    for x,n,sub in [(245,'ReservaDTO','Reserva y claves de relación'),(725,'EntregaDTO','Datos y claves de la entrega'),(1205,'CocheDTO','Matrícula, sucursal y categoría')]:
        titlebox(d,x,64,431,n,sub)
    for x,n,sub in [(245,'EmpleadoDTO','Identificación del empleado'),(725,'ClienteDTO','Datos del cliente'),(1205,'DAOExcepcion','Error de persistencia')]:
        titlebox(d,x,203,431,n,sub)
    return im

tokens=re.compile(r'^(classinstance|durationcanvas|  overlappingdurationcanvas|lostfoundmsgsupport|msg|reflexivemsg|fragment|textcanvas|continuation|note|end) +([^\n]*)(?:\n(?![A-Za-z]|  overlappingdurationcanvas)[^\n]*)*',re.M)
def sequence(n):
    source=read(model/f'{n}.diagram')
    lines=source.splitlines()
    starts=[i for i,l in enumerate(lines) if re.match(r'^(classinstance |durationcanvas |\s+overlappingdurationcanvas |lostfoundmsgsupport |msg |reflexivemsg |fragment |textcanvas |continuation |note )',l)]
    blocks=['\n'.join(lines[i:j]) for i,j in zip(starts,starts[1:]+[len(lines)])]
    actors=[]; durations={}; lost=set(); events=[]
    for block in blocks:
        head=block.splitlines()[0].strip()
        k,i,*_=head.split()
        if k=='classinstance':
            name=re.search(r'name "([^"]*)"',block).group(1)
            cls=head.split('// ')[-1]
            x=float(re.search(r'\bxyz ([\d.-]+)',block).group(1))
            actors.append((x,i,name,cls))
        elif k=='durationcanvas':
            durations[i]=re.search(r'classinstance_ref (\d+)',head).group(1)
            last=i
        elif k=='overlappingdurationcanvas':
            durations[i]=durations[last]
        elif k=='lostfoundmsgsupport':
            lost.add(i)
        elif k in ('msg','reflexivemsg'):
            y=float(re.search(r'\byz ([\d.-]+)',block).group(1))
            to=re.search(r'\bto durationcanvas_ref (\d+)',block)
            fr=re.search(r'\bfrom (\w+)_ref (\d+)',block)
            assert to is not None,block
            right=durations[to.group(1)]
            left=right if k=='reflexivemsg' else (durations.get(fr.group(2)) if fr else None)
            explicit=re.search(r'\bexplicitmsg "(.*)"',block)
            if explicit: msg=explicit.group(1)
            else:
                op=re.search(r'\boperation_ref \d+ // "([^"(]+)',block)
                assert op,block
                args=re.search(r'^\s+args "(.*)"',block,re.M)
                msg=op.group(1)+'('+(args.group(1) if args else '')+')'
            events.append((y,1,msg,left,right))
        elif k in ('continuation','fragment','textcanvas'):
            pos=re.search(r'\bxyzwh ([\d.-]+) ([\d.-]+) [\d.-]+ [\d.-]+ ([\d.-]+)',block)
            if not pos: continue
            y=float(pos.group(2)); name=head.split('"',1)[-1].rsplit('"',1)[0]
            if k=='fragment':
                events.append((y,0,name,None,None))
                events.append((y+float(pos.group(3)),3,'Fin de '+name,None,None))
            elif k=='textcanvas': events.append((y,0,name,None,None))
            else: events.append((y,2,name,None,None))
    actors.sort()
    events.sort()
    # Use the original order and endpoints with a fixed message column for print.
    width=1450; split=650; step=40
    h=106+step*len(events)+25
    im,d=image(h)
    d.rectangle((0,0,width-1,h-1),outline='#C4CED6',width=2)
    d.rectangle((1,1,width-2,103),fill=pale)
    d.text((20,50),'MENSAJES Y CONDICIONES',font=font(25,True),fill=blue,anchor='lm')
    gap=(width-split-20)/max(len(actors),1)
    coordinates={}
    aliases={'ControladorEntregarVehiculoReserva':'Ctrl. EntregaVehiculo','ControladorCasoDeUso':'Ctrl. CasoDeUso','ControladorPrincipal':'Ctrl. Principal',
             'AlquilerVehiculos':'AlquilerVehiculos','ConnectionManager':'ConnectionManager'}
    for j,(_,i,nm,cls) in enumerate(actors):
        x=round(split+(j+.5)*gap); coordinates[i]=x
        display=aliases.get(cls,cls)
        if display=='ConnectionManager' and gap<145: display='ConnectionMngr.'
        fs=22
        while d.textlength(display,font=font(fs,True))>gap-8 and fs>14: fs-=1
        d.text((x,38),display,font=font(fs,True),fill=dark,anchor='mm')
        if nm: d.text((x,65),nm,font=font(20),fill=muted,anchor='mm')
        for yy in range(104,h-15,12): d.line((x,yy,x,yy+6),fill='#9CAEBE',width=2)
    d.line((split,102,split,h-1),fill='#C4CED6',width=2)
    for j,(_,kind,msg,fr,to) in enumerate(events):
        y=106+step*j+step//2
        if kind!=1:
            bg='#F1F5F9' if kind in (0,2) else '#F7F8FA'
            d.rectangle((1,y-step/2,width-2,y+step/2),fill=bg)
            if kind==2: msg='↳ '+msg[0].upper()+msg[1:]
            d.text((18,y),msg,font=font(24,kind!=3),fill=blue if kind!=3 else muted,anchor='lm')
            continue
        sz=25
        while d.textlength(msg,font=font(sz))>split-30 and sz>22: sz-=1
        if d.textlength(msg,font=font(sz))>split-30:
            msg=re.sub(r'\(.*\)$','(…)',msg)
        while d.textlength(msg,font=font(sz))>split-30:
            msg=msg[:-2].rstrip('…')+'…'
        d.text((18,y),msg,font=font(sz),fill=dark,anchor='lm')
        tx=coordinates[to]; fx=coordinates.get(fr,split+8)
        if fr==to:
            d.line((tx,y-7,tx+23,y-7,tx+23,y+7),fill=blue,width=3)
            line_arrow(d,tx+23,y+7,tx,y+7)
        else:
            if fr is None: d.ellipse((fx-3,y-4,fx+5,y+4),fill=blue)
            line_arrow(d,fx,y,tx,y)
    return im

D.add_paragraph('Práctica 3 de ingeniería inversa',style='Title')
D.add_heading('Entregar vehículo reservado',1)
p('Memoria del segundo caso de uso · Proyecto A7')
p('Zhijian Wu Wang')
p('La entrega comienza en el menú principal de la aplicación. El empleado elige una sucursal, una reserva pendiente y un vehículo de la categoría correspondiente, e introduce los datos de la entrega. La operación registra la entrega y actualiza el estado persistido del coche.')
D.add_heading('2.2.1 Diagrama de clases',1)
p('El diagrama EJ2.2.1 de la vista EJ2.2 reúne 29 clases e interfaces. Para identificarlas se siguió el manejador de la interfaz hasta las operaciones de persistencia y se incluyeron los objetos del dominio, los DTO y la excepción que intervienen en el recorrido.')
h('Organización del modelo')
label('Presentación.', 'ControladorPrincipal abre el caso de uso. ControladorCasoDeUso aporta la inicialización común y ControladorEntregarVehiculoReserva gestiona las tablas y el formulario. Este último hereda del controlador base y maneja objetos Reserva y Coche.')
label('Dominio y lógica.', 'AlquilerVehiculos centraliza las operaciones del caso de uso. Reserva enlaza con el cliente, la categoría y las sucursales de recogida y devolución. Entrega vincula la reserva con el coche y el empleado. Categoria permite recorrer la relación superior si la categoría solicitada carece de coches.')
label('Acceso a datos.', 'AlquilerVehiculos se comunica con DAL. DAL trabaja con interfaces DAO. Las implementaciones ejecutan las consultas y escrituras a través de ConnectionManager y las capas intercambian DTO. DAOExcepcion representa los errores de persistencia.')
h('Alcance y representación')
p('La vista completa se desglosa en EJ2.2.1a–d. Las clases que se repiten entre vistas sirven de enlace para seguir las relaciones entre capas. Las figuras de esta memoria son esquemas de lectura elaborados a partir del modelo. Los diagramas editables y sus relaciones completas se encuentran en A7.EJ2y3.')
p('Devolucion y Danyo quedan fuera del recorrido de entrega. Categoria y Sucursal sí participan como objetos de dominio. Sus DAO y DTO se utilizan en la carga del sistema, cuyo detalle queda fuera del alcance de este ejercicio. Los tipos de JavaFX y del JDK pertenecen al entorno de ejecución.')

page('2.2.1 Clases de presentación y dominio')
put(classchart('a'),'Figura 1. Vista de presentación basada en EJ2.2.1a.')
put(classchart('b'),'Figura 2. Relaciones principales del dominio basadas en EJ2.2.1b.')
table([
('ControladorPrincipal','Recibe el evento del menú mediante entregarVehiculoReserva. Solicita la inicialización y muestra la ventana del caso de uso.'),
('ControladorCasoDeUso','Clase abstracta con la lógica común de apertura. Carga el FXML, obtiene el controlador y le asocia la ventana y el controlador principal.'),
('ControladorEntregarVehiculoReserva','Inicializa el formulario y carga las reservas y los coches. Valida los datos y pide a AlquilerVehiculos que cree la entrega.'),
('AlquilerVehiculos','Fachada de la lógica. Gestiona las colecciones del dominio y coordina las consultas y escrituras mediante DAL.'),
])
page('2.2.1 Objetos del dominio y datos intercambiados')
table([
('Reserva','Representa la solicitud de alquiler. Incluye fechas y modalidad y referencia al cliente, la categoría, las sucursales y la entrega, si existe.'),
('Entrega','Registra fecha, tipo de seguro, kilometraje y combustible en el momento de la entrega. Relaciona la reserva, el coche y el empleado.'),
('Coche','Identifica el vehículo por su matrícula y almacena su kilometraje. Se relaciona con una categoría y, cuando está asignado a ella, con una sucursal.'),
('Categoria','Agrupa vehículos y define sus tarifas. Su referencia a una categoría superior permite ampliar la búsqueda de coches.'),
('Sucursal','Identifica la oficina por su identificador y dirección. Puede ser lugar de recogida o devolución y punto de adscripción de coches y empleados.'),
('Empleado','Representa al trabajador que realiza la entrega. El formulario usa su DNI para comprobar que existe y asociarlo a la entrega.'),
('Cliente','Representa a quien hizo la reserva. Su nombre y DNI se muestran en la tabla de reservas de la sucursal.'),
('ReservaDTO','Transfiere los datos persistidos de una reserva. Identifica sus relaciones por DNI del cliente, categoría e identificadores de sucursal.'),
('EntregaDTO','Transfiere los datos de la entrega para su consulta o inserción. Incluye el identificador de la reserva, la matrícula y el DNI del empleado.'),
('CocheDTO','Transfiere matrícula, kilometraje, sucursal y categoría del coche. Se utiliza al listar y recuperar vehículos.'),
('EmpleadoDTO','Transfiere el DNI, nombre y condición de administrador del empleado recuperado. Permite construir el objeto Empleado.'),
('ClienteDTO','Transfiere los datos personales y de tarjeta del cliente. Se usa al reconstruir el Cliente asociado a una reserva.'),
('DAOExcepcion','Excepción propia para errores del acceso a datos. El tratamiento depende de dónde se capture en el recorrido.')
])
p()
put(classchart('d'),'Figura 3. DTO y excepción basados en EJ2.2.1d.')

page('2.2.1 Clases e interfaces de persistencia')
put(classchart('c'),'Figura 4. Acceso a datos basado en EJ2.2.1c.')
table([
('DAL','Fachada de acceso a datos. Delega las operaciones en los DAO y entrega a la lógica los datos en forma de DTO.'),
('IReservaDAO','Declara las operaciones de persistencia de reservas. Para este caso se consultan por sucursal de recogida y por identificador.'),
('ReservaDAOImp','Implementa IReservaDAO. Ejecuta las consultas y convierte los registros obtenidos en ReservaDTO.'),
('IEntregaDAO','Declara la inserción de una entrega y su búsqueda por identificador.'),
('EntregaDAOImp','Implementa IEntregaDAO. Inserta el registro de entrega y reconstruye un EntregaDTO cuando una consulta devuelve resultado.'),
('ICocheDAO','Declara el listado por sucursal, la búsqueda por matrícula y la modificación del coche.'),
('CocheDAOImp','Implementa ICocheDAO. Consulta los coches y, al registrar la entrega, actualiza la sucursal y el kilometraje del vehículo.'),
('IEmpleadoDAO','Declara las operaciones de persistencia de empleados. En este caso se utiliza la búsqueda por DNI.'),
('EmpleadoDAOImp','Implementa IEmpleadoDAO. Recupera de la base de datos al empleado cuyo DNI se indica.'),
('IClienteDAO','Declara las operaciones de persistencia de clientes. En este caso se utiliza la búsqueda por DNI.'),
('ClienteDAOImp','Implementa IClienteDAO. Recupera al cliente de una reserva cuando la lógica necesita consultarlo en la base de datos.'),
('ConnectionManager','Abre y cierra la conexión y ejecuta las sentencias SQL solicitadas por las implementaciones DAO.')
])

page('2.2.2 Diagrama de secuencia')
p('El diagrama EJ2.2.2 empieza en el manejador entregarVehiculoReserva(event) del menú principal. Las 23 continuaciones de la vista EJ2.2 amplían los mensajes de presentación, lógica y persistencia. Los eventos que llegan desde fuera de cada diagrama se indican con un punto de entrada.')
h('Apertura y carga de las reservas')
p('ControladorPrincipal llama a initCasoDeUso. El controlador base carga el FXML, se crea ControladorEntregarVehiculoReserva y se ejecuta initialize. La inicialización obtiene las sucursales, ordena sus identificadores, carga los seguros «todoriesgo» y «terceros» y registra los escuchadores. Al seleccionar la primera sucursal se dispara popularTablaReservas. El mismo método se ejecuta cuando cambia la sucursal.')
p('popularTablaReservas limpia la tabla y solicita listarReservasSucursal. DAL delega la consulta en ReservaDAOImp. La fachada reconstruye una Reserva por cada ReservaDTO, resuelve cliente, sucursales, categoría y entrega y guarda la reserva en memoria. La interfaz muestra las reservas cuyo getAsociado_a() devuelve null.')
h('Selección de un vehículo')
p('Cuando el empleado selecciona una reserva, listarCoches obtiene su categoría y consulta los coches de la sucursal seleccionada. La lógica construye los objetos Coche a partir de sus DTO y filtra por categoría. Si la lista filtrada queda vacía, prueba con la categoría superior y repite hasta encontrar coches o agotar la cadena. Si al final no hay resultados, el controlador muestra un aviso.')
h('Validación y registro de la entrega')
p('Al pulsar Aceptar, isInputValid comprueba que se han elegido reserva, coche y seguro, que el kilometraje y el combustible pueden convertirse a double y que el DNI corresponde a un empleado existente. Los mensajes de validación se acumulan en un aviso. Si la entrada es válida, aceptar llama a crearEntrega con la fecha y hora actuales, el id de reserva, los datos del formulario, la matrícula y el DNI.')
p('crearEntrega construye el EntregaDTO e inserta la entrega. Después modifica el coche mediante dos UPDATE, que dejan la sucursal a NULL y guardan el kilometraje indicado. A continuación construye Entrega, establece sus referencias a la reserva, al empleado y al coche y la guarda en la colección de entregas. Cuando la llamada termina correctamente, el controlador cierra la ventana.')
h('Tratamiento de errores')
p('Las operaciones DAO representadas convierten SQLException en DAOExcepcion. initialize, popularTablaReservas y listarCoches muestran un aviso si la capturan. aceptar y el constructor de Reserva imprimen la traza en los caminos de error modelados. La secuencia representa la llamada a cargaSistema() como parte de la inicialización del singleton y deja su implementación fuera del desarrollo.')

page('2.2.2 Secuencia principal y criterio de lectura')
num,name=seqs[0]
put(sequence(num),'Figura 5. EJ2.2.2. Apertura de la ventana y eventos del caso de uso.')
p('En las figuras siguientes, la columna de la izquierda muestra las llamadas y condiciones en orden de ejecución. Las flechas señalan el origen y el destino. Un tramo que vuelve a su propia línea de vida representa una llamada interna. Los rótulos de continuación remiten al método que se detalla en otra figura. Se abrevian algunos nombres de participantes y argumentos largos para facilitar la lectura.')
p('Las continuaciones se agrupan por la clase que inicia el recorrido. En las llamadas de persistencia aparece la implementación concreta del DAO que responde en ejecución. Las consultas breves a las colecciones en memoria se entienden en el contexto del método que las invoca. Las operaciones de biblioteca se condensan, con los avisos y excepciones relevantes para el flujo.')

groups=[
    ('Continuaciones de presentación',seqs[1:5]),
    ('Continuaciones de lógica',seqs[5:12]),
    ('Continuaciones de los constructores',seqs[12:15]),
    ('Continuaciones de persistencia',seqs[15:])
]
fig=6
for section,items in groups:
    page(section)
    used=55
    for num,name in items:
        im=sequence(num)
        cost=im.height*482/1450+40
        if used+cost>650:
            D.add_page_break()
            used=0
        disp=name.replace('ControladorEntregarVehiculoReserva.','')
        D.add_heading(disp,3)
        put(im,f'Figura {fig}. {name}.')
        used+=cost
        fig+=1
assert fig==29

page('Declaración de uso de IA para el apartado 4')
p('Este texto recoge el uso de IA correspondiente a EJ2.2.1 y EJ2.2.2 para incorporarlo a la declaración conjunta de la práctica.')
h('Claude Opus 5.5')
p('Según los borradores de trabajo, se utilizó para revisar las clases participantes y las notas del diagrama, así como para reorganizar su disposición y dividirlo en cuatro vistas. Para la secuencia se utilizó Claude Code con Claude Opus 5.5 para seguir las llamadas Java, elaborar un generador de ficheros de BoUML y preparar el diagrama principal y sus 23 continuaciones. Los borradores recogen una revisión en BoUML y retoques de etiquetas y notas.')
p('Una de las peticiones de esa sesión fue «seguimos con la misma rama 2.2.1 que falta hacer el diagrama de secuencia y si lo mejor sería partirlo cuando lo hagas dime cómo lo has hecho y justificaciones».')
h('ChatGPT con Codex y GPT-6')
p('Se utilizó para consolidar la memoria en Word, contrastar las explicaciones de los borradores con los diagramas y cuerpos Java guardados en A7.EJ2y3 y preparar las figuras de lectura a partir del modelo. El resultado es esta memoria de los dos ejercicios.')
p('La petición fue «Vale dado este proyecto necesito que me hagas un Word con la memoria del proyecto me interesa que solo hagas mi parte con el control remoto si hace falta de escritorio que son el ejercicio 2.2.1 y el 2.2.2 que son del segundo caso de uso. Te adjunto todo lo que necesitarás, si te hace falta cualquier cosa o duda me dices».')
h('Material consultado')
p('Enunciado y presentación de la Práctica 3 de Ingeniería Inversa. Casos de uso del alquiler de vehículos. Proyecto A7.EJ2y3, vista EJ2.2. Borradores Explicacion_EJ2.2.1 y Explicacion_EJ2.2.2.')

out=root/'Memoria_A7_EJ2.2.1_y_EJ2.2.2.docx'
D.save(out)
check=Document(out)
assert len(check.inline_shapes)==28
assert len(check.tables)==3
print(out)

