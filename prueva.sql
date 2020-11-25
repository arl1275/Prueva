create database prueva;
use prueva;

--creando tablas

--=================================================
CREATE TABLE [dbo].[cajero](
	[id_cajero] [int] NOT NULL,
	[id_persona] [int] NOT NULL,
	[horario] [nchar](10) NULL,
	--foreign key (id_persona) references Personas(PK_Persona),
 CONSTRAINT [PK_cajero] PRIMARY KEY CLUSTERED 
(
	[id_cajero] ASC
 )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

--==================================================
CREATE TABLE [dbo].[ConeccionOrPro](
	[id] [int] NULL,
	[id_Organizacion] [int] NULL,
	[id_Producto] [int] NULL
) ON [PRIMARY]

--==================================================

CREATE TABLE [dbo].[Factura](
	[id_factura] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[id_cajero] [int] NOT NULL,
	[detalle] [int] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

--==================================================

CREATE TABLE [dbo].[inventario](
	[id] [int] NOT NULL,
	[nombre] [nchar](10) NOT NULL,
	[descripcion] [nchar](10) NULL,
	[precio] [float] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_inventario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

--==================================================

CREATE TABLE [dbo].[Organizacion](
	[id_organizacion] [int] NOT NULL,
	[nombre] [nchar](10) NOT NULL,
	[tipo] [int] NOT NULL,
 CONSTRAINT [PK_Organizacion] PRIMARY KEY CLUSTERED 
(
	[id_organizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

--==================================================

CREATE TABLE [dbo].[Persona](
	[id_persona] [int]  NOT NULL,
	[nombre] [nchar](10) NOT NULL,
	[apellido] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

--==================================================

CREATE TABLE [dbo].[producto](
	[id_producto] [int] NOT NULL,
	[nombre] [nchar](10) NOT NULL,
	[descripcion] [nchar](10) NULL,
	[precio] [int] NOT NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Credito](
	[ID_credito] [int] NOT NULL,
	[id_persona] [int] NOT NULL,
	[fecha_limite] [nchar](10) NOT NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[Detalle](
	[id_detalle] [int] NOT NULL,
	[nombre] [nchar](10) NOT NULL,
	[descipcion] [nchar](10) NULL,
	[date] [date] NOT NULL,
	[id_factura] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Detalle] PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

--aqui terminan las tablas ingeeeee... no espere muchas cosas buenas depues de esto... XD

insert into Organizacion values (1,'naranjas',1),  --1 para orden, 0 es para sin orden
								(2,'fruits',0),
								(3,'krits',1),
								(4,'maduro',0),
								(5,'kakitron',0),
								(6,'The rich',0),
								(7,'manzanasXD',0),
								(8,'isotropo',1),
								(9,'lavar',1),
								(10,'azul',0);

insert into producto values (11,'manzanas',null,5),
							(12,'cocacola',null,12),
							(13,'pepsi',null,11),
							(14,'sopa',null,10),
							(15,'doritos',null,3);

insert into producto values (11,'manzanas',null,5),
							(12,'cocacola',null,12),
							(13,'pepsi',null,11),
							(14,'sopa',null,10),
							(15,'doritos',null,3);
select *from ConeccionOrPro;