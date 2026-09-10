# datalab

Environnement Nix prêt à l'emploi regroupant des outils en ligne de commande pour manipuler des données (SQL, JSON, YAML, XML, CSV, compression, téléchargement...), organisés par catégories.

Ce projet propose un environnement reproductible et isolé pour la manipulation de données en ligne de commande, basé sur Nix. Le lockfile garantit que les outils (et leurs versions exactes) seront identiques sur toute machine, sans nécessiter de conteneur, tout en restant compatible avec des environnements déjà conteneurisés comme Onyxia (SSP Cloud). Idéal pour le travail collaboratif ou la pérennisation des pipelines de données.

## Prérequis

[Nix](https://nixos.org/download.html) avec les *flakes* activées (`experimental-features = nix-command flakes`).

Pour l'installation dans Onyxia voir la section [Installation dans Onyxia](#installation-dans-onyxia-httpsdatalabsspcloudfr).

## Utilisation

```bash
git clone https://github.com/eonm-pro/datalab
cd datalab

nix shell                # active tous les outils
nix shell .#xml .#json   # active une ou plusieurs catégories précises
nix develop              # shell de développement, mêmes options
```

## Catégories disponibles

| Catégorie     | Outils inclus                                  |
|---------------|-------------------------------------------------|
| `sql`         | `duckdb`, `sqlite`                              |
| `json`        | `jq`, `jqp`                                     |
| `yaml`        | `yq-go`                                         |
| `xml`         | `libxml2`, `libxslt`, `saxon-he`, `xmlstarlet`  |
| `csv`         | `xan`, `csvlens`, `csvkit`, `miller`            |
| `compression` | `gzip`, `xz`, `bzip2`, `lz4`, `unzip`, `zip`, `gnutar` |
| `fetch`       | `curl`                                          |
| `misc`        | `pv`, `ncdu`                                    |

## Installation dans Onyxia (https://datalab.sspcloud.fr)

En utilisant cliquant sur ce [lien](https://datalab.sspcloud.fr/launcher/ide/jupyter-python?name=Datalab&version=2.5.2&s3=default&init.personalInit=«https%3A%2F%2Fraw.githubusercontent.com%2Feonm-pro%2Fdatalab%2Frefs%2Fheads%2Fmain%2Finit.sh»&git.name=«»&git.email=«»&git.repository=«https%3A%2F%2Fgithub.com%2Feonm-pro%2Fdatalab»&autoLaunch=false).

Ou sur [Onyxia](https://datalab.sspcloud.fr) (SSP Cloud), les services (VSCode, Jupyter, RStudio...) démarrent sans Nix préinstallé. Le script `init.sh` l'installe, active les flakes, puis clone `datalab`.

Au lancement du service, en mode **Formulaire**, dépliez **« Initialization scripts »** :

| Champ                              | Valeur                                                        |
|-------------------------------------|-----------------------------------------------------------------|
| Use a custom script (URL)           | `https://raw.githubusercontent.com/eonm-pro/datalab/main/init.sh` |

Une fois le service lancé, dans un terminal :

```bash
cd ~/work/datalab
nix shell .#xml .#json
```
