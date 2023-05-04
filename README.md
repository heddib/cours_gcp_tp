# TP Noté Google Cloud Heddi Brahiti

## Convention de nommage

- Les noms de variables sont en minuscule et séparés par des underscores
- Les noms des ressources sont en minuscule et séparés par des underscores

## Explication de l'infrastructure

### Racine

- `main.tf` : Fichier principal de Terraform, appelle tous les modules se trouvant dans le dossier `modules`
- `variables.tf` : Fichier contenant les variables utilisées dans le fichier `main.tf`
- `outputs.tf` : Fichier contenant les outputs de l'infrastructure
- `providers.tf` : Fichier contenant les providers utilisés par Terraform, ici Google Cloud

### Modules

Le dossier `modules` contient tous les modules utilisés pour créer l'infrastructure.

- `cloud_function` : Module permettant de créer une cloud function (Hello World)
- `storage` : Module permettant de créer des buckets de stockage pour y stocker des objets
- `big_query` : Module permettant de créer un dataset et une table dans Big Query
- `stack_driver` : Module permettant de créer un dashboard pour afficher les métriques de l'infrastructure

### Dossier src

Le dossier `src` contient le code source de la cloud function.
Il faut compresser le dossier `src` en `function-source.zip` et placer le fichier à la racine.

## Prérequis

- Installer Terraform (https://learn.hashicorp.com/tutorials/terraform/install-cli)
- Installer Google Cloud SDK (https://cloud.google.com/sdk/docs/install)
- Créer un compte Google Cloud si vous n'en avez pas déjà un (https://cloud.google.com/)
- Se connecter via la CLI Google Cloud SDK (https://cloud.google.com/sdk/docs/quickstarts)
- Créer un projet Google Cloud si vous n'en avez pas déjà un 

## Configuration

- Ouvrir le fichier `variables.tf`
- Modifier la valeur par défaut de la variable `project` par l'id de votre projet Google Cloud
- Activer les apis suivantes : 
    - Cloud Functions
    - Cloud Build
    - Cloud Storage
    - Cloud Run

## Déploiement de l'infrastructure

- Ouvrir un terminal
- Exécuter la commande `terraform init`
- Puis exécuter la commande `terraform apply`

## Suppression de l'infrastructure

- Ouvrir un terminal
- Exécuter la commande `terraform destroy`

## Résultat

Une cloud function est créée et accessible via l'url suivante : https://europe-west1-chrome-insight-328216.cloudfunctions.net/nodejs-hello-world-europe-west1-9ef4b2a0fab65e73