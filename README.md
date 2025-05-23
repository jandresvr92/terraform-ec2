Infraestructura AWS con Terraform
📌 Descripción
Este proyecto implementa una infraestructura básica en AWS utilizando Terraform de manera modular. El objetivo es desplegar múltiples instancias EC2 de forma automatizada, aprovechando buenas prácticas como el uso de variables, módulos reutilizables, outputs y la creación dinámica de recursos.

La actividad permite familiarizarse con la estructura y flujos de un proyecto Terraform profesional, y sienta las bases para automatizar despliegues en la nube de manera declarativa y ordenada.

🛠 Tecnologías y Herramientas
Terraform (>= 1.0)

AWS (cuenta y credenciales configuradas)

AWS CLI (opcional, para validaciones)

🎯 Objetivos de Aprendizaje
Al completar este proyecto podrás:

Declarar y utilizar variables en Terraform.

Crear y consumir módulos reutilizables.

Usar el argumento count para crear múltiples recursos.

Exponer información clave del despliegue mediante outputs.

📂 Estructura del Proyecto
bash
Copiar
Editar
/aws-terraform-ec2
│
├── /modules
│   └── /ec2_instance       # Módulo reutilizable para instancias EC2
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── main.tf                 # Configuración principal que consume el módulo
├── variables.tf            # Declaración de variables globales
├── outputs.tf              # Outputs principales del proyecto
└── README.md               # Este archivo
🚀 Instrucciones de Uso
Clonar el repositorio:

bash
Copiar
Editar
git clone [<URL_DEL_REPO>](https://github.com/jandresvr92/terraform-ec2.git)
cd aws-terraform-ec2
Configura tus credenciales de AWS:

Debes tener configurado aws configure o las variables de entorno de acceso.

Edita las variables según tu contexto en variables.tf:

AMI ID, tipo de instancia, subnet, security groups, cantidad de instancias, etc.

Inicializa el proyecto y despliega:

bash
Copiar
Editar
terraform init
terraform plan
terraform apply
Revisa los outputs del despliegue:

Se mostrarán los IDs y IP públicas de las instancias EC2 creadas.

🌟 Características
Módulo parametrizable para instancias EC2.

Creación dinámica de múltiples instancias usando count.

Outputs útiles: IDs e IPs públicas de las instancias.

Proyecto organizado y fácil de ampliar.

📄 Ejemplo de Uso del Módulo
En main.tf se utiliza el módulo así:

hcl
Copiar
Editar
module "ec2_instances" {
  source           = "./modules/ec2_instance"
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  subnet_id        = var.subnet_id
  security_groups  = var.security_groups
  instance_count   = var.instance_count
}
🤝 Contribuciones
¡Las mejoras son bienvenidas! Si encuentras oportunidades para optimizar o agregar funcionalidad, abre un issue o haz un PR.

📜 Licencia
MIT

