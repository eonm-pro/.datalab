# datalab

Environnement Nix prêt à l'emploi regroupant des outils en ligne de commande pour manipuler des données (SQL, JSON, YAML, XML, CSV, compression, téléchargement...), organisés par catégories.

## Prérequis

[Nix](https://nixos.org/download.html) avec les *flakes* activées (`experimental-features = nix-command flakes`).

Pour l'installation dans Onyxia voir la section [Installation dans Onyxia](#installation-dans-onyxia).

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

## Installation dans Onyxia

Sur [Onyxia](https://datalab.sspcloud.fr) (SSP Cloud), les services (VSCode, Jupyter, RStudio...) démarrent sans Nix préinstallé. Le script `init.sh` l'installe, active les flakes, puis clone `datalab`.

Au lancement du service, en mode **Formulaire**, dépliez **« Initialization scripts »** :

| Champ                              | Valeur                                                        |
|-------------------------------------|-----------------------------------------------------------------|
| Use a custom script (URL)           | `https://raw.githubusercontent.com/eonm-pro/datalab/main/init.sh` |

Une fois le service lancé, dans un terminal :

```bash
cd ~/work/datalab
nix shell .#xml .#json
```
