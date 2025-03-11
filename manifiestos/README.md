# Ejercicio 6 
#Se realiza la configuracion para acceder al clouster 


  apiVersion: v1
  clusters:
  - cluster:
      certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkakNDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdGMyVnkKZG1WeUxXTmhRREUzTXprd09UQXhOVE13SGhjTk1qVXdNakE1TURnek5UVXpXaGNOTXpVd01qQTNNRGd6TlRVegpXakFqTVNFd0h3WURWUVFEREJock0zTXRjMlZ5ZG1WeUxXTmhRREUzTXprd09UQXhOVE13V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFUaHdYMjJWcjhHRUpFc0pVSER6YUMyWS9rMnJ2cldaem1EbXQ5aVM2Q1EKYlFOL0xLWEtVYjVaT2Y3TEdZZktXTnFVQkE3WXlDY2FEenlrZ0NhQnBBRklvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVXpZUTY5dlljZGJINGZTRUVWOHQvCmJ5OXh2UGt3Q2dZSUtvWkl6ajBFQXdJRFJ3QXdSQUlnSnV5ZFMyTzZTQ0p3YWJhelI1UnNTRWVkNldWTnNLQVoKNWx1M0txVHV3ZWdDSUJVcEN5UmlzWUJuQUJmZjBsRW95dWZ4T3B4VFVBeEhhSFJoNGJ4SXhmNmcKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=
      server: https://131.153.227.126:6443
    name: e2
  contexts:
  - context:
      cluster: e2
      user: e2
    name: e2
  current-context: e2
  kind: Config
  preferences: {}
  users:
  - name: e2
    user:
      client-certificate-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJrVENDQVRlZ0F3SUJBZ0lJSFNTNklqSGhVaXN3Q2dZSUtvWkl6ajBFQXdJd0l6RWhNQjhHQTFVRUF3d1kKYXpOekxXTnNhV1Z1ZEMxallVQXhOek01TURrd01UVXpNQjRYRFRJMU1ESXdPVEE0TXpVMU0xb1hEVEkyTURJdwpPVEE0TXpVMU0xb3dNREVYTUJVR0ExVUVDaE1PYzNsemRHVnRPbTFoYzNSbGNuTXhGVEFUQmdOVkJBTVRESE41CmMzUmxiVHBoWkcxcGJqQlpNQk1HQnlxR1NNNDlBZ0VHQ0NxR1NNNDlBd0VIQTBJQUJDMThhd3oycTVLemhqMFEKYkxvdjUyR0daM05NRjVRL20rTkx2L1B3RXdZMGlmclh0ZEgyVzFPWTdKQlJ3c053UlBKcWcrNGNvU211R3FNVApNeVRuTW1HalNEQkdNQTRHQTFVZER3RUIvd1FFQXdJRm9EQVRCZ05WSFNVRUREQUtCZ2dyQmdFRkJRY0RBakFmCkJnTlZIU01FR0RBV2dCVHhwSkJNQTREQ3BRMmMrQVZnODgzQ0dRRXZjVEFLQmdncWhrak9QUVFEQWdOSUFEQkYKQWlFQWtnTCtQMnhsWEJHVmtpVWp3d2JycEtHeFRta0J3NmFTN01ka1pqODRJZDRDSUViSEJRZkVvMlFDdXQ1dApVeFhvZlJ6M25xL05TaHRLY1hsZVlXYWg3TkpiCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0KLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJlRENDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdFkyeHAKWlc1MExXTmhRREUzTXprd09UQXhOVE13SGhjTk1qVXdNakE1TURnek5UVXpXaGNOTXpVd01qQTNNRGd6TlRVegpXakFqTVNFd0h3WURWUVFEREJock0zTXRZMnhwWlc1MExXTmhRREUzTXprd09UQXhOVE13V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFUbFJydmQ3Z1pFM2ZUc0NkVVorS3poSGxPNWVHeXRYdmQyeWEzd2dXWEgKelZDMlFvVDFIWHNURnhMOWNZLzJTWlpUUUE2N1d6VU9OOWd0TkVUeWtsOVhvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVThhU1FUQU9Bd3FVTm5QZ0ZZUFBOCndoa0JMM0V3Q2dZSUtvWkl6ajBFQXdJRFNRQXdSZ0loQUkzOGlXeEZFTnEwY3I2MHlDb2JCYllWczhwNHNRN1kKK2tOMXpVVHpsdU1UQWlFQXJwK1JNRkl6WGc1VjduYVUyaEpxVkZWVFR0eFBPZ3RjRmZsV1FaNHFFT0k9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
      client-key-data: LS0tLS1CRUdJTiBFQyBQUklWQVRFIEtFWS0tLS0tCk1IY0NBUUVFSUhuVjBWenlrWktSRXRxbmorUGJ6S3NwSStaOTYwTGhEWEJOZ1VaWTVCVlpvQW9HQ0NxR1NNNDkKQXdFSG9VUURRZ0FFTFh4ckRQYXJrck9HUFJCc3VpL25ZWVpuYzB3WGxEK2I0MHUvOC9BVEJqU0ordGUxMGZaYgpVNWpza0ZIQ3czQkU4bXFEN2h5aEthNGFveE16Sk9jeVlRPT0KLS0tLS1FTkQgRUMgUFJJVkFURSBLRVktLS0tLQo=
  
#se realiza la reubicación del archivo 
  
#verificación de la configuración al cluster e2
  kubectl config current-context
  
#Se crea un namespace con la finalidad de tener un único espacio de trabajo por usuario 

  apiVersion: v1 
  kind: ServiceAccount 
  metadata: 
   name: tekton-sa 
   namespace: {{ namespace }}
  
  
#Una vez teniendo la definición de un namesapce dentro del cluster se relizan las practicas sugeridas en clase 
  
#Ejercicio 6 Service Account#
  
#En un clúster de Kubernetes, una "ServiceAccount" es un recurso que proporciona una identidad para los procesos que se ejecutan dentro del clúster
  
#Define la cuenta de servicio con los permisos necesarios

  apiVersion: v1 
  kind: ServiceAccount 
  metadata: 
   name: tekton-sa 
   namespace: {{ namespace }} 
  
#Tekton requiere permisos para acceder a recursos como `pods`, `pvc`, y objetos de `pipeline`. 
#Para especificar esto debemos de crear un `Role` y `RoleBinding
  

  apiVersion: rbac.authorization.k8s.io/v1 
  kind: Role 
  metadata: 
   name: tekton-role 
   namespace: {{ namespace }} 
  rules: 
   - apiGroups: [""] 
   resources: ["pods", "persistentvolumeclaims", "secrets", 
  "configmaps"] 
   verbs: ["get", "list", "watch", "create", "update", "delete"] 
   - apiGroups: ["tekton.dev"]# Controller needs to access these tekton 
  resources to do the specific actions 
   resources: ["pipelineruns", "taskruns"] 
   verbs: ["get", "list", "watch", "create", "update", "delete"] 
  --- 
  apiVersion: rbac.authorization.k8s.io/v1 
  kind: RoleBinding 
  metadata: 
   name: tekton-rolebinding 
   namespace: {{ namespace }} 
  subjects: 
   - kind: ServiceAccount 
   name: tekton-sa 
   namespace: default 
  roleRef: 
   kind: Role 
   name: tekton-role 
   apiGroup: rbac.authorization.k8s.io 
    
  
  
#Se configura la conexión con el hub de  docker 

  apiVersion: v1 
  kind: Secret 
  metadata: 
   name: dockerconfig-secret 
  stringData: 
   config.json: | 
   { 
   "auths": { 
   "https://index.docker.io/v1/": { 
   “auth": {{ token }} 
   } 
   } 
   }
   
   
#Agregamos las credenciales del hub de docker 
  

  apiVersion: v1 
  kind: Secret 
  {{completar yaml }}
   
#Agregamos el secret en la taskrun o en el pipelinerun
#Estos secretos se utilizan para autenticar la descarga de imágenes desde un registro privado de Docker. Cuando un contenedor en un pod intenta descargar una imagen desde un registro privado, necesita credenciales para autenticarse.
   

  apiVersion: v1 
  kind: ServiceAccount 
  metadata: 
   name: tekton-sa 
   namespace: default 
  {{agregar secrts}}
   
  
#comando para  aplicar los ajustes del archivo .yaml creado 
   kubectl apply -f nombreArchivo.yaml 
#comando para ver los logs 
  tkn taskrun logs nombre -f 
#image ServiceAccount
(images/Ejercicio6_ServiceAccount.PNG) [https://github.com/vianeyfloresB93/gestionCobrosInventarios/blob/main/images/Ejercicio6_ServiceAccount.PNG] 
  
# Ejercicio 6. Hello World#
   
#Se carga la configuración de la task
   
 
   apiVersion: tekton.dev/v1beta1 
  kind: Task 
  metadata: 
   name: hello-world 
   namespace: {{ namespace }} 
  spec: 
   steps: 
   - name: echo 
   image: busybox 
   script: | 
#!/bin/sh 
   echo "Hello, World from Tekton!" 
  
#Se crea la taskRun 

  apiVersion: tekton.dev/v1beta1 
  kind: TaskRun 
  metadata: 
   name: hello-world-run 
   namespace: {{ namespace }} 
  spec: 
   taskRef: 
   name: hello-world 
   
   
#aplicamos los nuevos .yaml 
   kubectl apply -f hello-world-task.yaml 
   kubectl apply -f hello-world-taskrun.yaml 
#Verificamos la ejecicion listando los taskRun en ejecución 
  tkn taskrun list 
  
#visualizamos los logs 
  tkn taskrun logs hello-world-run -f 
  #images Hello World 
 (images/Ejercicio6_HelloWorldPod.PNG) [https://github.com/vianeyfloresB93/gestionCobrosInventarios/blob/main/images/Ejercicio6_HelloWorldPod.JPG] 
 (images/Ejercicio6_HelloWorldLog.PNG) [https://github.com/vianeyfloresB93/gestionCobrosInventarios/blob/main/images/Practica6_HelloWorldLog.JPG] 
 
# Ejercicio 6 git - clone#
  
#Clonamos la task de git-clone 
  
  kubectl apply -f https://api.hub.tekton.dev/v1/resource/tekton/task/git-clone/0.9/raw -n {{ namespace }} 
  
  o
  tkn hub install task git-clone -n {{ namespace }} 
  
#aplicamos
  kubectl apply -f https://api.hub.tekton.dev/v1/resource/tekton/task/git-clone/0.9/raw -n diploe2-vgfc
  
#Creamos la task Run 
   
  
#aplicamos 
   
   kubectl apply -f nombre.yaml 
    
#verificamos si se ha ejecutado correctamente 
#en caso de no tener instalado se puede comprobar con el comando de kubernetes 
  kubectl get pods -n {{namespace}}
  
#verificamos los logs 
  kubecetl logs -n {{namespace}} {{nombre del pod}}
  
#Image Git Clone 
(images/Ejercicio6_gitClone.JPG)[https://github.com/vianeyfloresB93/gestionCobrosInventarios/blob/main/images/Ejercicio6_gitClone.JPG]
  
## Ejercicio 6. tekton list dir 
  
#descargamos la task de list directory 
    
  https://raw.githubusercontent.com/redhat-scholars/tekton-tutorial/refs/heads/master/workspaces/list-directory-task.yaml
  
#configurar el git clone del ejercicio anterior 
  

  apiVersion: tekton.dev/v1beta1
  kind: TaskRun
  metadata:
    generateName: git-clone-
    namespace: {{namespace}}
  spec:
    taskRef:
      kind: Task
      name: git-clone
    podTemplate:
      securityContext:
        fsGroup: 65532
    params:
      - name: url
        value: https://github.com/vianeyfloresB93/gestionCobrosInventarios.git {{sustituir}}
      - name: deleteExisting
        value: "true"
    workspaces:
      - name: output
#emptyDir: {}
        persistentVolumeClaim: 
          claimName: workspace
  
#Creamos la task run list directory 

  apiVersion: tekton.dev/v1beta1
  kind: TaskRun
  metadata: 
    generateName: list-directory-
  spec: 
    taskRef: 
      name: list-directory
    podTemplate: 
      securityContext: 
        fsGroup: 65532
    workspaces: 
      - name: output
        persistentVolumeClaim: 
          claimName: workspace
  
  
#aplicamos 
  kubectl apply -f nombre.yaml 
  
#verificamos si se ha ejecutado correctamente 
#en caso de no tener instalado se puede comprobar con el comando de kubernetes 
  kubectl get pods -n {{namespace}}
  
#verificamos los logs 
  kubecetl logs -n {{namespace}} {{nombre del pod}}

# Ejercicio 6 construye la aplicacion java#
#creamos la task de maven 

  apiVersion: tekton.dev/v1beta1
  kind: Task
  metadata:
    name: maven
    namespace: diploe2-vgfc
  spec:
    params:
      - name: GOALS
        type: array
        description: "Goals to pass to Maven"
        default:
          - clean
          - package
      - name: MAVEN_IMAGE
        type: string
        description: "Maven Docker image to use"
        default: gcr.io/cloud-builders/mvn@sha256:8f38a2667125a8d83f6e1997847fedb6a06f041c90e2244884153d85d95f869b
    steps:
      - name: maven-build
        image: $(params.MAVEN_IMAGE)
    workspaces:
      - name: maven-settings
      - name: output
  
  
#Creamos el configMap, en este punto se debe de recuperar el settings de nuestra configuración maven

  apiVersion: v1
  kind: ConfigMap
  metadata:
    name: maven-settings
    namespace: diploe2-vgfc
  data:
    settings.xml: |
      <settings xmlns="http://maven.apache.org/SETTINGS/1.2.0"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.2.0 https://maven.apache.org/xsd/settings-1.2.0.xsd"> {{sustituir}}
  
#Se prepara la taskrun de maven 

  apiVersion: tekton.dev/v1beta1
  kind: TaskRun
  metadata: 
    generateName: maven-
    namespace: diploe2-vgfc
  spec: 
    podTemplate: 
      securityContext: 
        fsGroup: 65532
    taskRef: 
      kind: Task
      name: maven
    params: 
      - name: GOALS
        value: 
          - -B
          - -DskipTests
          - clean
          - package
      - name: MAVEN_IMAGE
        value: gcr.io/cloud-builders/mvn@sha256:8f38a2667125a8d83f6e1997847fedb6a06f041c90e2244884153d85d95f869b
    workspaces: 
      - name: maven-settings
        configmap: 
          name: maven-settings
      - name: output
        persistentVolumeClaim: 
          claimName: workspace
    
#aplicamos 
   
   kubectl apply -f nombre.yaml / kubectl create -f nombre.yaml
    
#verificamos si se ha ejecutado correctamente 
#en caso de no tener instalado se puede comprobar con el comando de kubernetes 
  kubectl get pods -n {{namespace}}
  
#verificamos los logs 
  kubecetl logs -n {{namespace}} {{nombre del pod}}


#image Build
(images/jercicio6_TektonBuild.JPG)[https://github.com/vianeyfloresB93/gestionCobrosInventarios/blob/main/images/jercicio6_TektonBuild.JPG]
#Ejercicio6 Contruye y empuja 
  
#Creamos la task de buildah 
  
  apiVersion: tekton.dev/v1beta1
  kind: Task
  metadata:
    name: buildah
    namespace: diploe2-vgfc
  spec:
    params:
      - name: IMAGE
        description: "The name of the image to build"
        type: string
      - name: TLSVERIFY
        description: "Verify TLS (true or false)"
        type: string
        default: "true"
      - name: STORAGE_DRIVER
        description: "Storage driver to use with Buildah"
        type: string
        default: "overlay"
    workspaces:
      - name: source
        description: "The source code to build"
      - name: dockerconfig
        description: "Docker config to use for pushing images"
    steps:
      - name: buildah-build
        image: quay.io/buildah/stable:latest
        script: |
#!/usr/bin/env sh
          buildah bud --tls-verify=$(params.TLSVERIFY) --storage-driver=$(params.STORAGE_DRIVER) -t $(params.IMAGE) $(workspaces.source.path)
      - name: buildah-push
        image: quay.io/buildah/stable:latest
        script: |
#!/usr/bin/env sh
          buildah push --tls-verify=$(params.TLSVERIFY) $(params.IMAGE) docker://$(params.IMAGE)
        env:
          - name: REGISTRY_AUTH_FILE
            value: "{{agregar}}"
        volumeMounts:
          - name: dockerconfig
            mountPath: {{agregar}}
    volumes:
      - name: dockerconfig
        emptyDir: {}
  
  
#Creamos la taskRun 
  
  apiVersion: tekton.dev/v1beta1
  kind: TaskRun
  metadata: 
    generateName: buildah-run-
    namespace: diploe2-vgfc
  spec: 
    taskRef: 
      name: buildah
    params: 
      - name: IMAGE
        value: 'docker.io/{{imag}}'
      - name: TLSVERIFY
        value: 'false'
      - name: STORAGE_DRIVER
        value: 'vfs'
    workspaces: 
      - name: source
        persistentVolumeClaim: 
          claimName: workspace
      - name: dockerconfig
        secret: 
          secretName: {{dockerconfig-scrt}}
  
  
#aplicamos 
   
   kubectl apply -f nombre.yaml /  kubectl create -f nombre.yaml 
    
#verificamos si se ha ejecutado correctamente 
#en caso de no tener instalado se puede comprobar con el comando de kubernetes 
  kubectl get pods -n {{namespace}}
  
#verificamos los logs 
  kubecetl logs -n {{namespace}} {{nombre del pod}}

#images build and push 
(images/Ejercicio6_Build_and_Push.JPG)[https://github.com/vianeyfloresB93/gestionCobrosInventarios/blob/main/images/Ejercicio6_Build_and_Push.JPG]
  
# Creacion de Pipelines de tarea que realice un git-clone, utilice imagen de maven para empaquetar nuestro proyecto y realice un buildha al hub de docker 
 apiVersion: tekton.dev/v1beta1
  kind: Pipeline
  metadata:
    name: pipelinerun-ci
    namespace: diploe2-vgfc
  spec:
    description: |
      Esta pipeline realiza las siguientes tareas:
      1. Clona el repositorio (git-clone)
      2. Compila y empaqueta la aplicación (maven)
      3. Construye la imagen y la empuja al Hub (buildah)
    params:
      - name: repo-url
        type: string
      - name: branch
        type: string
      - name: image-url
        type: string
      - name: maven-image
        type: string
    workspaces:
      - name: workspace
    tasks:
      - name: fix-permissions
        taskSpec:
          steps:
            - name: fix-permissions
              image: busybox
              script: |
#!/bin/sh
                echo "Ajustando permisos en /workspace..."
                chown -R $(id -u):$(id -g) /workspace
        workspaces:
          - name: workspace
            workspace: workspace
      - name: fetch-repository
        taskRef:
          name: git-clone
          kind: Task
        params:
          - name: url
            value: $(params.repo-url)
          - name: revision
            value: $(params.branch)
        workspaces:
          - name: workspace
            workspace: workspace
      - name: build-and-package
        taskRef:
          name: maven
          kind: Task
        runAfter:
          - fetch-repository
        params:
          - name: GOALS
            value:
              - clean
              - package
          - name: MAVEN_IMAGE
            value: $(params.maven-image)
        workspaces:
          - name: workspace
            workspace: workspace
      - name: buildah-build
        taskRef:
          name: buildah
          kind: Task
        runAfter:
          - build-and-package
        params:
          - name: IMAGE
            value: $(params.image-url)
          - name: DOCKERFILE
            value: ./Dockerfile
        workspaces:
          - name: workspace
            workspace: workspace
  
#definimos un pipeline run que ejecute el pipeline ci
 apiVersion: tekton.dev/v1beta1
  kind: PipelineRun
  metadata:
    generateName: pipelinerun-ci-
    namespace: {{namespace}}
  spec:
    serviceAccountName: tekton-sa
    pipelineRef:
      name: pipelinerun-ci
    params:
      - name: repo-url
        value: "{{repo url}"
      - name: branch
        value: "main"
      - name: image-url
        value: "docker.io/{{user}}/{{tag}}"
      - name: maven-image
        value: "gcr.io/cloud-builders/mvn"
    workspaces:
      - name: workspace
        persistentVolumeClaim: 
          claimName: workspace
  
  
#ejecutamos los comandos
#aplicamos 
   
   kubectl apply -f nombre.yaml / kubectl create -f nombre.yaml
    
#verificamos si se ha ejecutado correctamente 
#en caso de no tener instalado se puede comprobar con el comando de kubernetes 
  kubectl get pipeline -n {{namespace}
  kubectl  get pipelinerun -n {{namespace}}
  kubectl get pods -n {{namespace}}
  
#verificamos los logs 
  kubecetl logs -n {{namespace}} {{nombre del pod}}
  kubectl describe pipelinerun {{pipelinerun}} -n {{namespace}}
