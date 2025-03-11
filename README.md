# Proyecto Gestion de Cobros e Inventarios 

Este proyecto es una solución integral diseñada para optimizar los procesos operativos en puntos de venta, con un enfoque en la gestión eficiente de cobros y la administración de inventarios. Su objetivo principal es brindar una herramienta poderosa y escalable que permita a los negocios mantener un control completo sobre sus transacciones y recursos, mejorando la experiencia tanto para los usuarios como para los clientes finales.


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

# Trabajando con el proyecto 

#Cambia a la rama de destino

git checkout main

#Trae los cambios más recientes

git pull origin main

#Realiza el merge de la rama fuente

git merge feature-branch

#Resolver conflictos si los hay, luego agregar archivos resueltos. 

git add nombre-del-archivo-afectado 

#Finaliza el merge.

git commit

#Empuja los cambios al repositorio remoto

git push origin main

#otros comandos [subir cambios  a la rama]
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

# Trabajando CI/CD 

El objetivo del presente proyecto como entregable final del Módulo 5 es la realización del proceso CI/CD propuesto en clase. Tomando como referencia los siguientes pasos para su ejecución. 

#Creacion Service Account 
--- 
apiVersion: v1 
kind: ServiceAccount 
metadata: 
 name: tekton-triggers-sa 
 namespace: {{ namespace }} 
--- 
apiVersion: rbac.authorization.k8s.io/v1 
kind: RoleBinding 
metadata: 
 name: triggers-eventlistener-binding 
 namespace: {{ namespace }} 
subjects: 
 - kind: ServiceAccount 
 name: tekton-triggers-sa 
 namespace: test 
roleRef: 
 apiGroup: rbac.authorization.k8s.io 
 kind: ClusterRole 
 name: tekton-triggers-eventlistener-roles 

#Ejecuta el siguiente comando y verifica si tu service-account y namespace están en la lista como 

kubectl describe clusterrolebinding triggers-eventlistener-clusterbinding

#Creacion del TriggerTemplate

apiVersion: triggers.tekton.dev/v1alpha1
kind: TriggerTemplate
metadata:
  name: tekton-trigger-template-cicd
  namespace: {{ namespace }}
spec:
  params:
    - name: repo-url
      description: The git repository URL to clone from.
    - name: branch-name
      description: The git tag to clone.
    - name: maven-image
      description: The maven image to use for compile and build.
    - name: image-name
      description: >-
        The image full path to host the built image, with version tag, 
        e.g. image-registry.openshift-image-registry.svc:5000/tekton-pipelines/spring-boot-docker:v1.0.0.
    - name: deployment-name
      description: The script file for deployment.
  resourcetemplates:
    - apiVersion: tekton.dev/v1beta1
      kind: PipelineRun
      metadata:
        generateName: pipelinerun-cicd-
      spec:
        serviceAccountName: tekton-sa
        pipelineRef:
          name: pipeline-cicd
        params:
          - name: repo-url
            value: $(tt.params.repo-url)
          - name: branch-name
            value: $(tt.params.branch-name)
          - name: maven-image
            value: $(tt.params.maven-image)
          - name: image-name
            value: $(tt.params.image-name)
          - name: deployment-name
            value: $(tt.params.deployment-name)
        workspaces:
          - name: maven-settings
            configmap:
              name: maven-settings
          - name: workspace
            persistentVolumeClaim:
              claimName: workspace
          - name: empty-dir
            emptyDir: {}
          - name: dockerconfig-ws
            secret:
              secretName: dockerconfig-ws

#Creacion del Trigger Binding

apiVersion: triggers.tekton.dev/v1alpha1 
kind: TriggerBinding 
metadata: 
 name: tekton-trigger-binding-cicd 
 namespace: {{ namespace }} 
spec: 
 params: 
 - name: repo-url 
 value: $(body.repository.clone_url) 
 - name: branch-name 
 value: main #$(body.repository.default_branch) 
 - name: maven-image 
 value: gcr.io/cloud-builders/
mvn@sha256:8f38a2667125a8d83f6e1997847fedb6a06f041c90e2244884153d85d95f86
9b 
 - name: image-name 
 value: docker.io/cafaray/notificaciones:$(body.head_commit.id) 
 - name: deployment-name 
 value: notificaciones-service

#Creacion del Event Listener

apiVersion: triggers.tekton.dev/v1beta1 
kind: EventListener 
metadata: 
 name: event-listener-cicd 
 namespace: {{ namespace }} 
spec: 
 serviceAccountName: tekton-triggers-sa 
 triggers: 
 - name: github-listener 
 interceptors: 
 - ref: 
 name: "github" 
 kind: ClusterInterceptor 
 apiVersion: triggers.tekton.dev 
 params: 
 - name: "eventTypes" 
 value: ["push"] # "pull_request" 
 bindings: 
 - ref: tekton-trigger-binding-cicd 
 template: 
 ref: tekton-trigger-template-cicd

#Exponer el event listener usando un componente ingress

k get svc -n test 

#Creacion del ingress 

apiVersion: networking.k8s.io/v1 
kind: Ingress 
metadata: 
 name: ingress-el 
 namespace: {{ namespace }} 
 annotations: 
 traefik.ingress.kubernetes.io/router.entrypoints: web 
spec: 
 rules: 
 - host: el-event-listener-cicd.142326f7-9998-4329-
b02e-803519aff129.k8s.civo.com 
 http: 
 paths: 
 - path: /{{ namespace }}
 pathType: Prefix 
 backend: 
 service: 
 name: el-event-listener-cicd 
 port: 
 number: 8080

#Configuración del  WebHook 

(images/ConfiguracionWeebHook.JPG) [https://github.com/vianeyfloresB93/gestionCobrosInventarios/blob/main/images/ConfiguracionWeebHook.JPG]

#Paso 2 configuracion WebHook

En la pantalla de configuración presiona el 
botón de “Agregar WebHook” y te presentará 
la pantalla de configuración, donde debemos 
de colocar los siguientes valores:
- Payload URL: http://el-event-listenercicd.142326f7-9998-4329-b02e-803519aff129.k8s.civo.com/{{ namespace }}
- Content type: application/json
- Which events would you like to trigger
this webhook? Verifica que este seleccionado 
`Just the push event`.
- Active: Deberá estar marcado
Deja el resto de valores por defecto, y 
finalmente presiona el botón `Add webhook`
Ell resultado deberá de verse como la pantalla 
mostrada abajo:


(images/Paso2_configuracionWebHook.JPG) [https://github.com/vianeyfloresB93/gestionCobrosInventarios/blob/main/images/Paso5_configuracionWebHook.JPG]

#Paso 3 configuracion WebHook

(images/Paso3_configuracionWebHook.JPG)[https://github.com/vianeyfloresB93/gestionCobrosInventarios/blob/main/images/Paso3_configuracionWebHook.JPG]

#Paso 4 Realiza la prueba de conexión entre el WebHook y el Tekton Trigger

#Result Refrenece Image: 

(images/Result_WebHoock.JPG)[https://github.com/vianeyfloresB93/gestionCobrosInventarios/blob/main/images/Result_WebHoock.JPG]

# Test WebHook Proyecto Final

Para testear el CI/CD se requiere realizar un commit a nivel de la rama main para activar el CI/CD en el pod del proyecto 

#images Reference 

(images/TestResult.JPG)[https://github.com/vianeyfloresB93/gestionCobrosInventarios/blob/main/images/Test1.JPG]

(images/TestPod.JPG)[https://github.com/vianeyfloresB93/gestionCobrosInventarios/blob/main/images/Test1_Pod.JPG]

# Test del laboratorio4

#Laboratorio 4_ prueba pipeline e2e

> Verificación de mi CI/CD desde mi repositorio vianeyfloresB93 gestionCobrosInventarios

#prueba trigger Ejercicio9_tekton_event_listener

#prueba trigger 
