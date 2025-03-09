# gestionCobrosInventarios

## Proyecto que realiza la administración de inventarios y la gestión de cobros de un negocio

# Clonar el repositorio
https://github.com/vianeyfloresB93/gestionCobrosInventarios.git

#navegar por el directorio del proyecto 
cd ../gestionCobrosInventarios

#crear branch a partir de la rama feature/dev. Esta nueva rama tendrá el nombre del usuario
git switch feature/dev
git checkout -b vianeyflores
git push origin vianeyflores

#por cada entregable agregar una rama 
git switch vianeyflores
git checkout -b entregableX
git push origin entregableX

#Una vez culminado el entregable realizar merge a la rama con nuestro nombre y solicitar pull request para la rama feature/dev
# Cambia a la rama de destino
git checkout main

# Trae los cambios más recientes
git pull origin main

# Realiza el merge de la rama fuente
git merge feature-branch

# Resolver conflictos si los hay, luego agregar archivos resueltos. 
git add nombre-del-archivo-afectado 

# Finaliza el merge.
git commit

# Empuja los cambios al repositorio remoto
git push origin main

# otros comandos [subir cambios  a la rama]
#descarga los ultimos cambios  
git pull origin <nombre-de-la-rama>

#visualiza los archivos modificados 
git status 

#agregar archivos resueltos
git add <archivo-modificado>

#También puedes agregar todos los archivos modificados 
git add . 

#agrega un comentario 
git commit -m "descripción"

#enviar al repositorio los nuevos cambios 
git push origin <rama>

#prueba trigger Ejercicio9_tekton_event_listener



