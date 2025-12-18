# README — Configuración .bashrc

Este archivo documenta una configuración personalizada del archivo `~/.bashrc`
para sistemas GNU/Linux (Ubuntu / Debian). El objetivo es ofrecer un entorno de
terminal **seguro, cómodo y productivo**, sin perder claridad sobre qué hace cada cosa.

---

## INSTALACIÓN DE DEPENDENCIAS (UN SOLO COMANDO)

Ejecuta el siguiente comando **una sola vez** para instalar todas las herramientas
que este `.bashrc` utiliza:

sudo apt update && sudo apt install -y 
lsd 
curl 
git 
less 
bash-completion 
python3 
python3-venv 
nodejs 
npm 
tldr && 
curl -sS [https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh](https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh) | bash

Este comando instala:

* Utilidades modernas de listado (`lsd`)
* Herramientas de ayuda rápida (`tldr`)
* Navegación inteligente de directorios (`zoxide`)
* Dependencias base de sistema, desarrollo y autocompletado

---

## DESCRIPCIÓN GENERAL DEL .bashrc

La configuración incluye:

* Ejecución segura solo en modo interactivo
* Historial de comandos grande, con fecha y hora
* Prompt visual en dos líneas con colores
* Alias seguros para evitar errores graves
* Alias productivos para sistema, red y desarrollo
* Funciones útiles para el día a día

Todo está pensado para ser **entendible y modificable**.

---

## ALIAS Y COMANDOS DISPONIBLES

A continuación se describen los alias definidos en el `.bashrc`.

---

## NAVEGACIÓN

.. -> sube un nivel en el sistema de archivos
... -> sube dos niveles
.... -> sube tres niveles

Estos alias reducen escritura repetitiva al moverse entre carpetas.

---

## LISTADO DE ARCHIVOS (lsd)

ls -> lista archivos con iconos y colores
l -> listado detallado
la -> incluye archivos ocultos
ll -> listado completo (detallado + ocultos)
lt -> muestra el árbol de directorios

`lsd` es un reemplazo moderno de `ls` que mejora la lectura visual.

---

## SEGURIDAD DE ARCHIVOS

rm -> elimina archivos solicitando confirmación
cp -> copia archivos pidiendo confirmación al sobrescribir
mv -> mueve archivos pidiendo confirmación

Estos alias ayudan a evitar borrados o sobrescrituras accidentales.

---

## SISTEMA Y RECURSOS

df -> muestra uso de disco en formato legible
du -> muestra tamaño de archivos y carpetas
free -> muestra uso de memoria RAM
cpuinfo -> información detallada del CPU
diskinfo -> información general de discos
ports -> lista puertos abiertos
ping -> prueba de red limitada (5 paquetes)

Facilitan la supervisión rápida del sistema.

---

## RED

myip -> muestra la dirección IP pública
localip -> muestra la IP local activa

Útiles para diagnóstico y redes.

---

## BÚSQUEDA (grep)

grep -> búsqueda de texto con resaltado de color

Mejora la lectura de coincidencias en archivos.

---

## GIT

gs -> muestra el estado del repositorio
ga -> añade archivos al área de preparación
gp -> envía cambios al repositorio remoto
gl -> muestra historial gráfico de commits
gcmsg -> crea un commit con mensaje

Atajos pensados para un flujo de trabajo rápido.

---

## APT / PAQUETES

update -> actualiza el sistema (update + upgrade)
install -> instala paquetes con apt
remove -> elimina paquetes
purge -> elimina paquetes y configuración
search -> busca paquetes disponibles

Centraliza comandos frecuentes de administración.

---

## PYTHON

py -> ejecuta python3
pip -> ejecuta pip3
venv -> crea un entorno virtual
activate -> activa un entorno virtual existente
mkvenv -> crea y activa un entorno virtual

Facilita el trabajo con entornos virtuales.

---

## NODE / NPM

ni -> npm install
ns -> npm start
nt -> npm test

Incluye carga automática de NVM si está instalado.

---

## UTILIDADES PERSONALES

dmk -> crea un directorio y entra en él
ftext -> busca texto de forma recursiva
sizeof -> muestra tamaño de archivo o carpeta

Pequeñas funciones para tareas repetitivas.

---

## EXTRAS

zoxide -> navegación inteligente de directorios basada en uso
tldru -> actualiza la base de datos de tldr

---

## NOTAS FINALES

Este `.bashrc` prioriza:

* Seguridad antes que velocidad
* Claridad antes que complejidad
* Productividad sin ocultar el funcionamiento

Puedes modificar o eliminar cualquier alias según tus necesidades.

FIN DEL ARCHIVO
