# datalab

[![Onyxia](https://img.shields.io/badge/Onyxia%20(sspcloud)-Cr%C3%A9er%20un%20nouveau%20service-blue.svg?logo=data:image/svg%2bxml;base64,PHN2ZyBjbGFzcz0ib255eGlhLWZpbGwtdXNlQ2FzZXMtdHlwb2dyYXBoeS10ZXh0Rm9jdXMgdHNzLXUyczk5NC1UaGVtZWRTdmctcm9vdC1CcmFuZEhlYWRlclNlY3Rpb24tbG9nbyIgdmlld0JveD0iMzMgMTkgMzc1IDI1NCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBmaWxsPSIjRkY1NjJDIj4KICA8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGNsYXNzPSJzcGxhc2hzY3JlZW4tYW5pbWF0aW9uLWdyb3VwMSI+CiAgICA8cGF0aCBkPSJNMjMyLjc0MyA4OC43Nzc0TDI2Ni42OTMgMTIyLjg5OEMyNzcuNTAyIDEzMy43NjEgMjk1LjAxOCAxMzMuNzYxIDMwNS44MTIgMTIyLjg5OEwzMzkuNzYyIDg4Ljc3NzRMMjg2LjI1MyAzNUwyMzIuNzQzIDg4Ljc3NzRaIj48L3BhdGg+CiAgICA8cGF0aCBkPSJNMTA2LjI1MyA4OC43Nzc0TDE0MC4yMDQgMTIyLjg5OEMxNTEuMDEyIDEzMy43NjEgMTY4LjUyOCAxMzMuNzYxIDE3OS4zMjIgMTIyLjg5OEwyMTMuMjczIDg4Ljc3NzRMMTU5Ljc2MyAzNUwxMDYuMjUzIDg4Ljc3NzRaIj48L3BhdGg+ICAgCiAgPC9nPgogIDxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9InNwbGFzaHNjcmVlbi1hbmltYXRpb24tZ3JvdXAyIj4KICAgICAgPHBhdGggZD0iTTQzIDE1Mi4zMzFMNzYuOTUwOCAxODYuNDUyQzg3Ljc1OTQgMTk3LjMxNCAxMDUuMjc1IDE5Ny4zMTQgMTE2LjA2OSAxODYuNDUyTDE1MC4wMiAxNTIuMzMxTDk2LjUwOTkgOTguNTUzN0w0MyAxNTIuMzMxWiI+PC9wYXRoPgogICAgICA8cGF0aCBkPSJNMTY5LjQ5IDE1Mi4zMzFMMjAzLjQ0MSAxODYuNDUyQzIxNC4yNSAxOTcuMzE0IDIzMS43NjUgMTk3LjMxNCAyNDIuNTU5IDE4Ni40NTJMMjc2LjUxIDE1Mi4zMzFMMjIzIDk4LjU1MzdMMTY5LjQ5IDE1Mi4zMzFaIj48L3BhdGg+CiAgICAgIDxwYXRoIGQ9Ik0zNDkuNDkgOTguNTUzN0wyOTUuOTggMTUyLjMzMUwzMjkuOTMxIDE4Ni40NTJDMzQwLjc0IDE5Ny4zMTQgMzU4LjI1NiAxOTcuMzE0IDM2OS4wNDkgMTg2LjQ1Mkw0MDMgMTUyLjMzMUwzNDkuNDkgOTguNTUzN1oiPjwvcGF0aD4KICA8L2c+CiAgPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBjbGFzcz0ic3BsYXNoc2NyZWVuLWFuaW1hdGlvbi1ncm91cDMiPgogICAgPHBhdGggZD0iTTEwNi4yNTMgMjE1LjlMMTQwLjIwNCAyNTAuMDJDMTUxLjAxMiAyNjAuODgzIDE2OC41MjggMjYwLjg4MyAxNzkuMzIyIDI1MC4wMkwyMTMuMjczIDIxNS45TDE1OS43NjMgMTYyLjEyM0wxMDYuMjUzIDIxNS45WiI+PC9wYXRoPgogICAgPHBhdGggZD0iTTIzMi43NDMgMjE1LjlMMjY2LjY5MyAyNTAuMDJDMjc3LjUwMiAyNjAuODgzIDI5NS4wMTggMjYwLjg4MyAzMDUuODEyIDI1MC4wMkwzMzkuNzYyIDIxNS45TDI4Ni4yNTMgMTYyLjEyM0wyMzIuNzQzIDIxNS45WiI+PC9wYXRoPgogIDwvZz4KPC9zdmc+)](https://datalab.sspcloud.fr/launcher/ide/jupyter-python?name=Datalab&version=2.5.2&s3=default&init.personalInit=«https%3A%2F%2Fraw.githubusercontent.com%2Feonm-pro%2Fdatalab%2Frefs%2Fheads%2Fmain%2Finit.sh»&git.name=«»&git.email=«»&git.repository=«https%3A%2F%2Fgithub.com%2Feonm-pro%2Fdatalab»&autoLaunch=false)

Environnement [Nix](https://nixos.org/) prêt à l'emploi regroupant des outils en ligne de commande pour manipuler des données (SQL, JSON, YAML, XML, CSV, compression, téléchargement...), organisés par catégories.

Ce projet propose un environnement reproductible et isolé pour la manipulation de données en ligne de commande, basé sur Nix. Le lockfile garantit que les outils (et leurs versions exactes) seront identiques sur toutes les machines, sans nécessiter de conteneur, tout en restant compatible avec des environnements déjà conteneurisés comme Onyxia ([SSP Cloud](https://datalab.sspcloud.fr)). Idéal pour le travail collaboratif ou la pérennisation des pipelines de données.

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
